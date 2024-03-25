output "Network_Details" {
  value       = data.terraform_remote_state.Remote_State
  description = "All Network Details"
}

output "Security_Group_ID" {
  value       = aws_security_group.HTTP-HTTPS.id
  description = "Security Group HTTP-HTTPS ID"
}

output "Instance_Public_IP" {
  value       = aws_instance.Amazon_Linux.public_ip
  description = "AWS Instance Amazon Linux Public IP"
}

output "Instance_Public_DNS" {
  value       = aws_instance.Amazon_Linux.public_dns
  description = "AWS Instance Amazon Linux Public DNS"
}
