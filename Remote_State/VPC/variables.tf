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
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}
