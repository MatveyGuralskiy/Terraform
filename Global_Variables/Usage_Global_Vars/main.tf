provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Environment      = local.Environment
      Owner            = local.Owner
      From             = local.From
      "GitHub Profile" = local.Github
    }
  }
}

terraform {
  backend "s3" {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Test/Globalvars/terraform.tfstate"
    region = "eu-west-3"
  }
}

data "terraform_remote_state" "Global_Vars" {
  backend = "s3"
  config = {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Globalvars/terraform.tfstate"
  }
}

resource "aws_instance" "Ubuntu_Linux" {
  ami           = data.aws_ami.Latest_Ubuntu.id
  instance_type = var.Instance_type
  tags = {
    Name = "Ubuntu Linux - ${local.Environment}"
  }
}

data "aws_ami" "Latest_Ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

