provider "aws" {}

data "aws_ami" "latest_amazon" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
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

resource "aws_instance" "amazon_linux" {
  ami           = data.aws_ami.latest_amazon.id
  instance_type = "t2.micro"
  tags = {
    Name       = "Amazon Linux"
    Owner      = "Matvey Guralskiy"
    Enviroment = "Production"
    From       = "Terraform"
  }
}

resource "aws_instance" "ubuntu_linux" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name       = "Ubuntu Linux"
    Owner      = "Matvey Guralskiy"
    Enviroment = "Production"
    From       = "Terraform"
  }
}
