provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner      = "Matvey Guralskiy"
      Enviroment = "Production"
      From       = "Terraform"
    }
  }
}

/*
Instead to write a lot of resources of IAM users use Loop count

resource "aws_iam_user" "User_Matvey" {
  name = "Matvey"
}

resource "aws_iam_user" "User_Mike" {
  name = "Mike"
}
*/

resource "aws_iam_user" "Users" {
  count = length(var.Users)
  name  = element(var.Users, count.index)
}

data "aws_ami" "Latest_Ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "Ubuntu_Linux" {
  count         = 2
  ami           = data.aws_ami.Latest_Ubuntu.id
  instance_type = var.Instance_type
  tags = {
    Name = "Ubuntu Linux ${count.index + 1}"
    Type = var.Resources_Types[0]
  }
}
