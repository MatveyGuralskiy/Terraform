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
    key    = "Production/Network/terraform.tfstate"
    region = "eu-west-3"
  }
}


resource "aws_vpc" "VPC" {
  cidr_block = var.VPC_cidr
  tags = {
    Name = "My VPC - ${var.Environment}"
  }
}

resource "aws_internet_gateway" "Gateway" {
  vpc_id = aws_vpc.VPC.id
  tags = {
    Name = "My VPC - Internet Gateway"
  }
}

resource "aws_subnet" "Public_Subnets" {
  count                   = length(var.Public_Subnet_cidrs)
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = element(var.Public_Subnet_cidrs, count.index)
  availability_zone       = data.aws_availability_zones.Availability.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}

resource "aws_route_table" "Public_Subnets" {
  vpc_id = aws_vpc.VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Gateway.id
  }
  tags = {
    Name = "Route Table - ${var.Environment}"
  }
}

resource "aws_route_table_association" "Public_Routes" {
  count          = length(aws_subnet.Public_Subnets[*].id)
  route_table_id = aws_route_table.Public_Subnets.id
  subnet_id      = element(aws_subnet.Public_Subnets[*].id, count.index)
}

data "aws_availability_zones" "Availability" {}
