output "Current_Region" {
  value       = data.aws_region.Current.name
  description = "AWS Region Name"
}

output "Current_Region_Description" {
  value       = data.aws_region.Current.description
  description = "AWS About the Region"
}

output "Working_Availability_zones" {
  value       = data.aws_availability_zones.Working.names
  description = "Names of Availability zones to Work"
}

output "Current_Account_ID" {
  value       = data.aws_caller_identity.Current.account_id
  description = "Current AWS User Account ID"
}

output "My_Vpcs_list" {
  value       = data.aws_vpcs.My_Vpcs.ids
  description = "All list of my VPC in AWS"
}

output "Default_Vpc_Arn" {
  value       = data.aws_vpc.Default_Vpc.arn
  description = "ARN of my default VPC"
}

output "Default_Vpc_CIDR" {
  value       = data.aws_vpc.Default_Vpc.cidr_block
  description = "CIDR block of my default VPC"
}
