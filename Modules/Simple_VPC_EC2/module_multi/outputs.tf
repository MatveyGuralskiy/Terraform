output "Instance_Private_IP" {
  value = aws_instance.Instance_Ubuntu.private_ip
}

output "Instance_ID" {
  value = aws_instance.Instance_Ubuntu.id
}
