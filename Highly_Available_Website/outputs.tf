output "AMI_ID_Webserver" {
  value       = data.aws_ami.latest_amazon.id
  description = "AMI ID for Webservers"
}

output "Available_Zones" {
  value       = data.aws_availability_zones.Available.names
  description = "Available zones of region"
}

output "Webserver_Url" {
  value       = aws_elb.Website_LB.dns_name
  description = "Load-Balancer url of Webserver"
}
