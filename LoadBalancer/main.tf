provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner = "Matvey Guralskiy"
      From  = "Terraform"
    }
  }
}

resource "aws_elb" "Load-Balancer" {
  name               = "elastic-loadbalancer-website"
  availability_zones = ["us-east-1a", "us-east-1b"]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 80
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "ARN CERTIFICATE"
  }

  instances                   = aws_instance.Amazon_Webservers[*].id
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "LoadBalancer for Website"
  }
}

resource "aws_instance" "Amazon_Webservers" {
  count         = 2
  ami           = data.aws_ami.Latest_Amazon.id
  instance_type = var.Instance_type
  user_data     = file("script.sh")
  tags = {
    Name = "Webserver - ${count.index + 1}"
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
