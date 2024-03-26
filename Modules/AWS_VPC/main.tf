# Module AWS VPC

data "aws_availability_zones" "Availability" {}

resource "aws_vpc" "VPC" {
  cidr_block = var.VPC_cidr
  tags = {
    Name        = "My VPC - ${var.Environment}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_internet_gateway" "Gateway" {
  vpc_id = aws_vpc.VPC.id
  tags = {
    Name        = "My VPC - Internet Gateway"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_subnet" "Public_Subnets" {
  count                   = length(var.Public_Subnet_cidrs)
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = element(var.Public_Subnet_cidrs, count.index)
  availability_zone       = data.aws_availability_zones.Availability.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name        = "Public Subnet ${count.index + 1}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_route_table" "Public_Subnets" {
  vpc_id = aws_vpc.VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Gateway.id
  }
  tags = {
    Name        = "Route Table Public Subnets - ${var.Environment}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_route_table_association" "Public_Routes" {
  count          = length(aws_subnet.Public_Subnets[*].id)
  route_table_id = aws_route_table.Public_Subnets.id
  subnet_id      = element(aws_subnet.Public_Subnets[*].id, count.index)
}

resource "aws_eip" "NAT_Elastic_IP" {
  count = length(var.Private_Subnet_cidrs)
  tags = {
    Name        = "Elastic IP - ${var.Environment}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_nat_gateway" "NAT" {
  count         = length(var.Private_Subnet_cidrs)
  allocation_id = aws_eip.NAT_Elastic_IP[count.index].id
  subnet_id     = element(aws_subnet.Public_Subnets[*].id, count.index)
  tags = {
    Name        = "NAT Gateway ${count.index + 1} - ${var.Environment}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_subnet" "Private_Subnets" {
  count             = length(var.Private_Subnet_cidrs)
  vpc_id            = aws_vpc.VPC.id
  cidr_block        = element(var.Private_Subnet_cidrs, count.index)
  availability_zone = data.aws_availability_zones.Availability.names[count.index]
  tags = {
    Name        = "Private Subnet ${count.index + 1}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

# Route table will be in every availability zone
resource "aws_route_table" "Private_Subnets" {
  count  = length(var.Private_Subnet_cidrs)
  vpc_id = aws_vpc.VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT[count.index].id
  }
  tags = {
    Name        = "Route Table Private Subnets - ${var.Environment}"
    Owner       = "Matvey Guralskiy"
    Environment = var.Environment
    From        = "Terraform"
  }
}

resource "aws_route_table_association" "Private_Routes" {
  count          = length(aws_subnet.Private_Subnets[*].id)
  route_table_id = aws_route_table.Private_Subnets[count.index].id
  subnet_id      = element(aws_subnet.Private_Subnets[*].id, count.index)
}
