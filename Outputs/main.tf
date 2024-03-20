provider "aws" {}

resource "aws_instance" "Amazon_Linux" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  user_data = templatefile("script.sh.tpl", {
    Name    = "Matvey",
    Surname = "Guralskiy",
    tools   = ["Kubernetes", "GitLab", "Azure", "Docker", "Terraform", "Ansible", "Linux", "Jenkins", "Networking"]
  })

  tags = {
    Name    = "Amazon_Linux"
    Owner   = "Matvey Guralskiy"
    Created = "Terraform"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Apache Webserver"

  dynamic "ingress" {
    for_each = ["80", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
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
