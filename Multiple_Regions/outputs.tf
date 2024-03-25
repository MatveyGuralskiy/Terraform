output "Public_IP_Default" {
  description = "Public IP of Instances in Default region"
  value       = aws_instance.Amazon_Linux_Default[*].public_ip
}

output "Public_IP_USA" {
  description = "Public IP of Instances in USA"
  value       = aws_instance.Amazon_Linux_USA[*].public_ip
}

output "Public_IP_Germany" {
  description = "Public IP of Instances in Germany"
  value       = aws_instance.Amazon_Linux_Germany[*].public_ip
}
