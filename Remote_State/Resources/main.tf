provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner       = "Matvey Guralskiy"
      Environment = var.Environment
      From        = "Terraform"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Production/Resources/terraform.tfstate"
    region = "eu-west-3"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Website"
  vpc_id      = data.terraform_remote_state.Remote_State.outputs.VPC_ID
  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.terraform_remote_state.Remote_State.outputs.VPC_cidr]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "HTTP-HTTPS - ${var.Environment}"
  }
}

resource "aws_instance" "Amazon_Linux" {
  ami                    = data.aws_ami.Latest_Amazon.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  subnet_id              = data.terraform_remote_state.Remote_State.outputs.Public_Subnets_ID[0]
  user_data              = file("./script.sh")
  tags = {
    Name = "Amazon Linux - ${var.Environment}"
  }
}

data "terraform_remote_state" "Remote_State" {
  backend = "s3"
  config = {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Production/Network/terraform.tfstate"
    region = var.Region
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
