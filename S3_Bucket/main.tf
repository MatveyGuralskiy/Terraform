provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner       = "Matvey Guralskiy"
      Environment = var.Environment
      From        = "Terraform"
    }
  }
}

resource "aws_s3_bucket" "Bucket" {
  bucket = "matvey-aws-terraform-s3-bucket"

  tags = {
    Name = "${var.Environment} - S3 Bucket"
  }
}

resource "aws_s3_bucket_versioning" "Bucket_Versioning" {
  bucket = aws_s3_bucket.Bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "Bucket_Encryption" {
  bucket = aws_s3_bucket.Bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
