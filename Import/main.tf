#IMPORT FILE
#Manage Resources Manually with Import
provider "aws" {
  region = var.Region
}

resource "aws_instance" "Amazon_Linux1" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.IMPORT.id]
  tags = {
    Name   = "Amazon Linux 1"
    Owner  = "Matvey Guralskiy"
    Manage = "Terraform"
  }
}

resource "aws_instance" "Amazon_Linux2" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.IMPORT.id]
  tags = {
    Name   = "Amazon Linux 2"
    Owner  = "Matvey Guralskiy"
    Manage = "Terraform"
  }
}

resource "aws_security_group" "IMPORT" {
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
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name   = "HTTP-HTTPS-SSH",
    Owner  = "Matvey Guralskiy"
    Manage = "Terraform"
  }
}
