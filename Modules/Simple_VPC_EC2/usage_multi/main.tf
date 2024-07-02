provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "usa"
  region = "us-east-1"
}

provider "aws" {
  alias  = "london"
  region = "eu-west-2"
}

module "germany_instance" {
  source        = "../module_multi"
  Instance_type = "t2.micro"
  CIDR          = "192.168.0.0/16"
  SUBNET_CIDR   = "192.168.1.0/24"
  providers = {
    aws = aws
  }
}

module "usa_instance" {
  source        = "../module_multi"
  Instance_type = "t2.micro"
  CIDR          = "10.0.0.0/16"
  SUBNET_CIDR   = "10.0.1.0/24"
  providers = {
    aws = aws.usa
  }
}

module "london_instance" {
  source        = "../module_multi"
  Instance_type = "t2.micro"
  CIDR          = "172.16.0.0/16"
  SUBNET_CIDR   = "172.16.1.0/24"
  providers = {
    aws = aws.london
  }
}

output "Instance_GER_ID" {
  value = module.germany_instance.Instance_ID
}

output "Instance_GER_Private_IP" {
  value = module.germany_instance.Instance_Private_IP
}

output "Instance_USA_ID" {
  value = module.usa_instance.Instance_ID
}

output "Instance_USA_Private_IP" {
  value = module.usa_instance.Instance_Private_IP
}


output "Instance_LONDON_ID" {
  value = module.london_instance.Instance_ID
}

output "Instance_LONDON_Private_IP" {
  value = module.london_instance.Instance_Private_IP
}
