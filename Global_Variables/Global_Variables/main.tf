provider "aws" {
  region = var.Region
}

terraform {
  backend "s3" {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Globalvars/terraform.tfstate"
    region = "eu-west-3"
  }
}
