output "Instance_ID" {
  value       = aws_instance.Ubuntu_Linux.id
  description = "Server ID"
}

output "Instance_Public_IP" {
  value       = aws_instance.Ubuntu_Linux.public_ip
  description = "Server Public IP"
}

output "Website_DNS" {
  value       = aws_instance.Ubuntu_Linux.public_dns
  description = "Website url in internet (DNS Name)"
}

output "Security_Group" {
  value       = aws_security_group.HTTP-FLASK.id
  description = "Security group ID"
}
