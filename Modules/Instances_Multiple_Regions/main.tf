# Module of AWS Instances Amazon Linux
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws,
        aws.Production,
        aws.Staging
      ]
    }
  }
}

data "aws_ami" "Latest_Amazon" {
  provider    = aws
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

data "aws_ami" "Latest_Amazon_Production" {
  provider    = aws.Production
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

data "aws_ami" "Latest_Amazon_Staging" {
  provider    = aws.Staging
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "Amazon_Linux" {
  provider      = aws
  ami           = data.aws_ami.Latest_Amazon.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux - Development"
  }
}

resource "aws_instance" "Amazon_Linux_Production" {
  provider      = aws.Production
  ami           = data.aws_ami.Latest_Amazon_Production.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux - Production"
  }
}

resource "aws_instance" "Amazon_Linux_Staging" {
  provider      = aws.Staging
  ami           = data.aws_ami.Latest_Amazon_Staging.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux - Staging"
  }
}
