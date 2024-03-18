provider "aws" {} #Instead enter the access key, secret key and region

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
