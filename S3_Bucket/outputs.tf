output "S3_Bucket_ID" {
  value       = aws_s3_bucket.Bucket.id
  description = "AWS S3 Bucket ID"
}

output "S3_Bucket_Domain" {
  value       = aws_s3_bucket.Bucket.bucket_domain_name
  description = "AWS S3 Bucket Domain Name"
}
