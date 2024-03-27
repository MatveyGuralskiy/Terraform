provider "aws" {
  region = var.Region
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
  instance_type = var.Instance_type
  tags = {
    Name       = "Amazon Linux"
    Owner      = "Matvey Guralskiy"
    Enviroment = var.Enviroment
    From       = "Terraform"
  }
}
