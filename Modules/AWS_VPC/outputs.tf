output "VPC_ID" {
  value       = aws_vpc.VPC.id
  description = "My VPC ID"
}

output "VPC_cidr" {
  value       = aws_vpc.VPC.cidr_block
  description = "My VPC CIDR Block"
}

output "Public_Subnets_ID" {
  value       = aws_subnet.Public_Subnets[*].id
  description = "Public Subnets ID's"
}

output "Private_Subnets_ID" {
  value       = aws_subnet.Private_Subnets[*].id
  description = "Private Subnets ID's"
}
