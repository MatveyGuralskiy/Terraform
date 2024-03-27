output "Instance_Public_IP" {
  value       = aws_instance.Amazon_Linux.public_ip
  description = "AWS Instance Public IP"
}

output "SG_ID" {
  value       = aws_security_group.HTTP-HTTPS.id
  description = "Security group HTTP-HTTPS ID"
}
