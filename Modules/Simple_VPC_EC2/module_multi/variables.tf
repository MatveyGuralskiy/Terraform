variable "Region" {
  type        = string
  description = "Region for Project to work with"
  default     = "eu-central-1"
}

variable "Instance_type" {
  type        = string
  description = "Regular instance type"
  default     = "t2.micro"
}

variable "CIDR" {
  type        = string
  description = "VPC CIDR BLOCK"
  default     = "10.0.0.0/16"
}

variable "SUBNET_CIDR" {
  type        = string
  description = "Subnet CIDR BLOCK"
  default     = "10.0.1.0/24"
}
