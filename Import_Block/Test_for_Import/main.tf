provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner = "Matvey Guralskiy"
      From  = "Terraform"
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

resource "aws_instance" "Amazon_Linux_1" {
  ami                    = data.aws_ami.Latest_Amazon.id
  instance_type          = var.Instance_type
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  tags = {
    Name        = "Amazon Linux 1"
    Type        = "Webserver"
    Environment = var.Environment[2]
  }
}

resource "aws_instance" "Amazon_Linux_2" {
  ami                    = data.aws_ami.Latest_Amazon.id
  instance_type          = var.Instance_type
  vpc_security_group_ids = [aws_security_group.SSH.id]
  tags = {
    Name        = "Amazon Linux 2"
    Type        = "Database"
    Environment = var.Environment[0]
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Webserver"
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
    Name        = "HTTP-HTTPS"
    Type        = "Webserver"
    Environment = var.Environment[2]
  }
}

resource "aws_security_group" "SSH" {
  name        = "SSH"
  description = "Security group for Database"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "SSH"
    Type        = "Database"
    Environment = var.Environment[0]
  }
}
