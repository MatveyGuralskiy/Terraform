provider "aws" {
  region = "eu-central-1"
}

module "germany_instance" {
  source        = "../module_multi"
  Instance_type = "t2.micro"
  CIDR          = "192.168.0.0/16"
  SUBNET_CIDR   = "192.168.1.0/24"
}

output "Instance_GER_ID" {
  value = module.germany_instance.Instance_ID
}

output "Instance_GER_Private_IP" {
  value = module.germany_instance.Instance_Private_IP
}
