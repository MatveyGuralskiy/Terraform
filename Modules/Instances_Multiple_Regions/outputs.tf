output "Instance_Development_Public_IP" {
  value       = aws_instance.Amazon_Linux.public_ip
  description = "AWS Instance Development Public IP"
}

output "Instance_Production_Public_IP" {
  value       = aws_instance.Amazon_Linux_Production.public_ip
  description = "AWS Instance Production Public IP"
}

output "Instance_Staging_Public_IP" {
  value       = aws_instance.Amazon_Linux_Staging.public_ip
  description = "AWS Instance Staging Public IP"
}
