terraform {
  backend "s3" {
    bucket = "matvey-aws-terraform-s3-bucket"
    key    = "Production/terraform.tfstate"
    region = "eu-west-3"
  }
}
