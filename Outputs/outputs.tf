output "Webserver_instance_id" {
  value       = aws_instance.Amazon_Linux.id
  description = "Instance id"
}

output "Webserver_public_ip" {
  value       = aws_instance.Amazon_Linux.public_ip
  description = "Instance Public IP"
}

output "Webserver_private_ip" {
  value       = aws_instance.Amazon_Linux.private_ip
  description = "Instance Private IP"
}

output "Webserver_sg_id" {
  value       = aws_security_group.HTTP-HTTPS.id
  description = "Security group id"
}

output "Webserver_sg_ingress" {
  value       = aws_security_group.HTTP-HTTPS.ingress
  description = "Security group inbound ports"
}

output "Webserver_sg_egress" {
  value       = aws_security_group.HTTP-HTTPS.egress
  description = "Security group outbound ports"
}
