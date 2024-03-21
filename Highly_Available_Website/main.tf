provider "aws" {
  region = "eu-west-3"
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

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Highly Available Website"
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
    Name  = "HTTP-HTTPS"
    Owner = "Matvey Guralskiy"
    Type  = "Security Group"
    From  = "Terraform"
  }
}

resource "aws_launch_configuration" "Website_LC" {
  name_prefix     = "Highly_Available_Website_LC"
  image_id        = data.aws_ami.latest_amazon.id
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.HTTP-HTTPS.id]
  user_data       = file("./script.sh")

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "Website_ASG" {
  name                 = "Website_ASG-${aws_launch_configuration.Website_LC.name}"
  launch_configuration = aws_launch_configuration.Website_LC.id
  min_size             = 2
  max_size             = 2
  min_elb_capacity     = 2 #Health Check 2 times before deploy
  vpc_zone_identifier  = [aws_default_subnet.Default_Available_1.id, aws_default_subnet.Default_Available_2.id]
  health_check_type    = "ELB"
  load_balancers       = [aws_elb.Website_LB.name]

  dynamic "tag" {
    for_each = {
      Name  = "Amazon Linux Webserver",
      Owner = "Matvey Guralskiy",
      Type  = "Instance",
      From  = "Terraform",
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

resource "aws_elb" "Website_LB" {
  name               = "Website-loadbalancer"
  availability_zones = [data.aws_availability_zones.Available.names[0], data.aws_availability_zones.Available.names[1]]
  security_groups    = [aws_security_group.HTTP-HTTPS.id]

  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = 80
    instance_protocol = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 10
  }

  tags = {
    Name  = "Webserver Load-Balancer"
    Owner = "Matvey Guralskiy"
    Type  = "Load-Balancer"
    From  = "Terraform"
  }
}

#Default Subnet for Available zones
resource "aws_default_subnet" "Default_Available_1" {
  availability_zone = data.aws_availability_zones.Available.names[0]
}

resource "aws_default_subnet" "Default_Available_2" {
  availability_zone = data.aws_availability_zones.Available.names[1]
}
