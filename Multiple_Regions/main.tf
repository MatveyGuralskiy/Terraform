provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner      = "Matvey Guralskiy"
      Enviroment = "Production"
      Region     = "Default Region - Paris"
      From       = "Terraform"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  alias  = "USA"
  default_tags {
    tags = {
      Owner      = "Matvey Guralskiy"
      Enviroment = "Production"
      Region     = "California, USA"
      From       = "Terraform"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  alias  = "GERMANY"
  default_tags {
    tags = {
      Owner      = "Matvey Guralskiy"
      Enviroment = "Production"
      Region     = "Frankfurt, Germany"
      From       = "Terraform"
    }
  }
}

data "aws_ami" "Latest_Amazon_Default" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

data "aws_ami" "Latest_Amazon_USA" {
  provider    = aws.USA
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

data "aws_ami" "Latest_Amazon_Germany" {
  provider    = aws.GERMANY
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "Amazon_Linux_Default" {
  count         = 1
  ami           = data.aws_ami.Latest_Amazon_Default.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux ${count.index + 1}"
  }
}

resource "aws_instance" "Amazon_Linux_USA" {
  provider      = aws.USA
  count         = 1
  ami           = data.aws_ami.Latest_Amazon_USA.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux ${count.index + 1}"
  }
}

resource "aws_instance" "Amazon_Linux_Germany" {
  provider      = aws.GERMANY
  count         = 1
  ami           = data.aws_ami.Latest_Amazon_Germany.id
  instance_type = var.Instance_type
  tags = {
    Name = "Amazon Linux ${count.index + 1}"
  }
}
