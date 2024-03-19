provider "aws" {}

resource "aws_instance" "Amazon_Linux" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  user_data              = file("./script.sh")
  tags = {
    Name       = "Amazon Linux"
    Enviroment = "Production"
    Owner      = "Matvey Guralskiy"
    Created    = "Terraform"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Apache Webserver"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress { #any traffic
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #any protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "HTTP-HTTPS"
    Owner   = "Matvey Guralskiy"
    Created = "Terraform"
  }
}
