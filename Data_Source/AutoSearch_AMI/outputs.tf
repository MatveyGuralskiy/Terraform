output "latest_amazon_ami_id" {
  value       = data.aws_ami.latest_amazon.id
  description = "Print AMI Amazon Linux id"
}

output "latest_amazon_ami_name" {
  value       = data.aws_ami.latest_amazon.name
  description = "AMI Amazon Linux specified name"
}

output "latest_ubuntu_ami_id" {
  value       = data.aws_ami.latest_ubuntu.id
  description = "Print AMI Ubuntu Linux id"
}

output "latest_ubuntu_ami_name" {
  value       = data.aws_ami.latest_ubuntu.name
  description = "AMI Ubuntu Linux specified name"
}

output "ubuntu_instance_id" {
  value       = aws_instance.ubuntu_linux.id
  description = "Ubuntu Instance id"
}

output "ubuntu_instance_public_ip" {
  value       = aws_instance.ubuntu_linux.public_ip
  description = "Ubuntu Instance Public IP"
}

output "linux_instance_id" {
  value       = aws_instance.amazon_linux.id
  description = "Amazon Linux Instance id"
}

output "amazon_linux_instance_public_ip" {
  value       = aws_instance.amazon_linux.public_ip
  description = "Amazon Linux Instance Public IP"
}

