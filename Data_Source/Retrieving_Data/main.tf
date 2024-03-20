provider "aws" {}

data "aws_region" "Current" {}
data "aws_availability_zones" "Working" {}
data "aws_caller_identity" "Current" {}
data "aws_vpcs" "My_Vpcs" {}
data "aws_vpc" "Default_Vpc" {
  tags = {
    Name = "default"
  }
}

resource "aws_instance" "Amazon_Linux" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS-SSH.id]

  tags = {
    Name    = "Amazon_Linux"
    Owner   = "Matvey Guralskiy"
    Created = "Terraform"
  }
}

resource "aws_security_group" "HTTP-HTTPS-SSH" {
  name        = "HTTP-HTTPS-SSH"
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

  ingress { #ssh port
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  egress { #any traffic
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
