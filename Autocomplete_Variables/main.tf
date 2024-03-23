provider "aws" {
  region = var.Region
}

data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "Ubuntu_Linux" {
  ami                    = data.aws_ami.latest_ubuntu.id
  instance_type          = var.Instance_type
  vpc_security_group_ids = [aws_security_group.HTTP-FLASK.id]
  monitoring             = var.Monitoring

  tags = merge({ Name = "${var.Common_tags["Enviroment"]} Ubuntu Linux" }, var.Common_tags)
}

resource "aws_security_group" "HTTP-FLASK" {
  name        = "HTTP-FLASK"
  description = "Security Group for Website based on Flask"
  dynamic "ingress" {
    for_each = var.Allow_ports
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

  tags = merge({ Name = "${var.Common_tags["Enviroment"]} Security Group for Website" }, var.Common_tags)
}
