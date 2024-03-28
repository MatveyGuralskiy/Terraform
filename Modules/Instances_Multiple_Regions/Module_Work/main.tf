provider "aws" {
  region = var.Region["Paris"]
  default_tags {
    tags = {
      Owner       = "Matvey Guralskiy"
      Environment = "Development"
      Region      = "France, Paris"
      From        = "Terraform"
    }
  }
}

provider "aws" {
  region = var.Region["Frankfurt"]
  alias  = "Production"
  default_tags {
    tags = {
      Owner       = "Matvey Guralskiy"
      Environment = "Production"
      Region      = "Germany, Frankfurt"
      From        = "Terraform"
    }
  }
}

provider "aws" {
  region = var.Region["London"]
  alias  = "Staging"
  default_tags {
    tags = {
      Owner       = "Matvey Guralskiy"
      Environment = "Staging"
      Region      = "United Kingdom, London"
      From        = "Terraform"
    }
  }
}

module "Instances" {
  source        = "/home/matvey/Desktop/Terraform/Module_Multiple_Regions/Module"
  Instance_type = "t2.micro"
  providers = {
    aws            = aws
    aws.Production = aws.Production
    aws.Staging    = aws.Staging
  }
}
