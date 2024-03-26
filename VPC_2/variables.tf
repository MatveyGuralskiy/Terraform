variable "Region" {
  description = "Enter AWS Region to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Environment" {
  description = "Environment of the Project"
  type        = string
  default     = "Production"
}

variable "VPC_cidr" {
  description = "CIDR Block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "Public_Subnet_cidrs" {
  description = "VPC Public Subnet cidr blocks"
  type        = list(any)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
  ]
}

variable "Private_Subnet_cidrs" {
  description = "VPC Private Subnet cidr blocks"
  type        = list(any)
  default = [
    "10.0.11.0/24",
    "10.0.12.0/24",
    "10.0.13.0/24",
  ]
}
