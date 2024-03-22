provider "aws" {
  region = "eu-west-3"

  default_tags {
    tags = {
      Owner = "Matvey Guralskiy"
      From  = "Terraform"
    }
  }
}

data "aws_ami" "latest_amazon" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

data "aws_availability_zones" "Available" {}

resource "aws_default_vpc" "default" {}

resource "aws_default_subnet" "Subnet-Available-1" {
  availability_zone = data.aws_availability_zones.Available.names[0]
}

resource "aws_default_subnet" "Subnet-Available-2" {
  availability_zone = data.aws_availability_zones.Available.names[1]
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Highly Available Cluster Website"
  vpc_id      = aws_default_vpc.default.id
  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "HTTP-HTTPS"
    Type = "Security Group"
  }
}

resource "aws_lb_target_group" "Load-Balancer-Target" {
  name                 = "Target-Group"
  vpc_id               = aws_default_vpc.default.id
  port                 = 80
  protocol             = "HTTP"
  deregistration_delay = 10
}

resource "aws_launch_template" "Website_LT" {
  name                   = "Highly_Available_Cluster_LT"
  image_id               = data.aws_ami.latest_amazon.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  user_data              = filebase64("${path.module}/script.sh")

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "Website_ASG" {
  name                = "Website_ASG-${aws_launch_template.Website_LT.latest_version}"
  min_size            = 2
  max_size            = 2
  min_elb_capacity    = 2 #Health Check 2 times before deploy
  health_check_type   = "ELB"
  vpc_zone_identifier = [aws_default_subnet.Subnet-Available-1.id, aws_default_subnet.Subnet-Available-2.id]
  target_group_arns   = [aws_lb_target_group.Load-Balancer-Target.arn]

  launch_template {
    id      = aws_launch_template.Website_LT.id
    version = aws_launch_template.Website_LT.latest_version
  }

  dynamic "tag" {
    for_each = {
      Name = "Amazon Linux Webserver",
      Type = "Instance",
    }
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_lb" "Load-Balancer-Website" {
  name               = "Load-Balancer-Cluster"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.HTTP-HTTPS.id]
  subnets            = [aws_default_subnet.Subnet-Available-1.id, aws_default_subnet.Subnet-Available-2.id]
}

resource "aws_lb_listener" "HTTP-Listener" {
  load_balancer_arn = aws_lb.Load-Balancer-Website.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Load-Balancer-Target.arn
  }
}
