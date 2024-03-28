output "Amazon_Linux_2_Public_IP" {
  description = "Public IP of Amazon Linux AWS Instance"
  value       = aws_instance.Amazon_Linux_2.public_ip
}

output "Amazon_Linux_1_Public_IP" {
  description = "Public IP of Amazon Linux AWS Instance"
  value       = aws_instance.Amazon_Linux_1.public_ip
}

output "Security_Group_HTTP_HTTPS_ID" {
  description = "Security group ID of HTTP-HTTPS"
  value       = aws_security_group.HTTP-HTTPS.id
}

output "Security_Group_SSH_ID" {
  description = "Security group ID of SSH"
  value       = aws_security_group.SSH.id
}
