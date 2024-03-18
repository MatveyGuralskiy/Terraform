provider "aws" {
  access_key = "YOUR ACCESS KEY"
  secret_key = "YOUR SECRET KEY"
  region     = "eu-west-3"
}

resource "aws_instance" "Amazon_Linux" {
  count         = 2
  ami           = "ami-06f64fb0331ab61a0"
  instance_type = "t2.micro"
  tags = {
    Name  = "Amazon Linux"
    Owner = "Matvey Guralskiy"
    Env   = "Production"
    From  = "Terraform"
  }
}

resource "aws_instance" "Ubuntu_Linux" {
  ami           = "ami-00c71bd4d220aa22a"
  instance_type = "t2.micro"
  tags = {
    Name  = "Ubuntu Linux"
    Owner = "Matvey Guralskiy"
    Env   = "Staging"
    From  = "Terraform"
  }
}
