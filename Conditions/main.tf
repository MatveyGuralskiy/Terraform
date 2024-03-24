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
  instance_type = var.Environment == "Production" ? "t2.small" : "t2.micro"
  tags = {
    Name = "${var.Environment} - Amazon Linux"
  }
}

resource "aws_instance" "Staging_Server" {
  count         = var.Environment == "Staging" ? 1 : 0
  ami           = data.aws_ami.Latest_Amazon.id
  instance_type = "t2.micro"
  tags = {
    Name = "${var.Environment} - Amazon Linux"
  }
}
