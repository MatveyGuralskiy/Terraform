provider "aws" {
  access_key = "YOUR ACCESS KEY"
  secret_key = "YOUR SECRET KEY"
  region     = "eu-west-3"
}

resource "aws_instance" "Amazon_Linux" {
  count         = 2
  ami           = "ami-06f64fb0331ab61a0"
  instance_type = "t2.micro"
}

resource "aws_instance" "Ubuntu" {
  ami           = "ami-00c71bd4d220aa22a"
  instance_type = "t2.micro"
}
