resource "aws_instance" "Instance_Ubuntu" {
  ami                    = data.aws_ami.latest_ubuntu.id
  vpc_security_group_ids = [aws_security_group.SG.id]
  instance_type          = var.Instance_type
  subnet_id              = aws_subnet.Public_Subnet.id
}

resource "aws_security_group" "SG" {
  vpc_id = aws_vpc.VPC.id
  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
  }
}

data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_vpc" "VPC" {
  cidr_block = var.CIDR
}

resource "aws_subnet" "Public_Subnet" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.SUBNET_CIDR
}
