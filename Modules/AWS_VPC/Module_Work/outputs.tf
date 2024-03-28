output "VPC_ID_Staging" {
  value       = module.Network_Staging.VPC_ID
  description = "My VPC ID"
}

output "VPC_cidr_Staging" {
  value       = module.Network_Staging.VPC_cidr
  description = "My VPC CIDR Block"
}

output "Public_Subnets_ID_Staging" {
  value       = module.Network_Staging.Public_Subnets_ID
  description = "Public Subnets ID's"
}

output "Private_Subnets_ID_Staging" {
  value       = module.Network_Staging.Private_Subnets_ID
  description = "Private Subnets ID's"
}

output "VPC_ID_Development" {
  value       = module.Network_Development.VPC_ID
  description = "My VPC ID"
}

output "VPC_cidr_Development" {
  value       = module.Network_Development.VPC_cidr
  description = "My VPC CIDR Block"
}

output "Public_Subnets_ID_Development" {
  value       = module.Network_Development.Public_Subnets_ID
  description = "Public Subnets ID's"
}

output "Private_Subnets_ID_Development" {
  value       = module.Network_Development.Private_Subnets_ID
  description = "Private Subnets ID's"
}
