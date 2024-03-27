provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Enviroment = var.Environment
      Owner      = "Matvey Guralskiy"
      From       = "Terraform"
    }
  }
}

data "aws_ami" "Latest_Amazon" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "Amazon_Linux_2" {
  ami                    = data.aws_ami.Latest_Amazon.id
  instance_type          = var.Instance_type
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  user_data              = file("./script.sh")
  tags = {
    Name = "Amazon Linux 2"
  }
}

resource "aws_eip" "Elastic_Webserver" {
  instance = aws_instance.Amazon_Linux_2.id
  tags = {
    Name = "Elastic IP"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Apache Webserver"
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
  }
}
