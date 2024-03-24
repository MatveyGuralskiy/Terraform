provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner       = var.Environment == "Production" && var.Environment == "Staging" ? var.Production_Owner : var.Non_Production_Owner
      From        = "Terraform"
      Environment = var.Environment
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

resource "aws_instance" "Amazon_Linux" {
  ami           = data.aws_ami.Latest_Amazon.id
  instance_type = var.Environment == "Production" ? var.EC2_Size["Production"] : var.EC2_Size["Staging"]
  tags = {
    Name = "${var.Environment} - Amazon Linux"
  }
}

resource "aws_instance" "Staging_Server" {
  count         = var.Environment == "Staging" ? 1 : 0
  ami           = data.aws_ami.Latest_Amazon.id
  instance_type = lookup(var.EC2_Size, "Staging")
  tags = {
    Name = "${var.Environment} - Amazon Linux"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Instance"
  dynamic "ingress" {
    for_each = lookup(var.Allow_Ports, var.Environment)
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
    Name = "${var.Environment} - Security Group"
  }
}
