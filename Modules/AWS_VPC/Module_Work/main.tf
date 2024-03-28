#Create 2 VPC's for Staging and Development
provider "aws" {
  region = var.Region
}

module "Network_Staging" {
  // source = "../AWS_VPC"
  source               = "git@github.com:MatveyGuralskiy/Terraform.git//Modules//AWS_VPC"
  Environment          = "Staging"
  VPC_cidr             = "10.100.0.0/16"
  Public_Subnet_cidrs  = ["10.100.1.0/24", "10.100.2.0/24"]
  Private_Subnet_cidrs = ["10.100.11.0/24", "10.100.12.0/24"]
}


module "Network_Development" {
  // source = "../AWS_VPC"
  source               = "git@github.com:MatveyGuralskiy/Terraform.git//Modules//AWS_VPC"
  Environment          = "Development"
  VPC_cidr             = "10.200.0.0/16"
  Public_Subnet_cidrs  = ["10.200.1.0/24", "10.200.2.0/24"]
  Private_Subnet_cidrs = ["10.200.11.0/24", "10.200.12.0/24"]
}
