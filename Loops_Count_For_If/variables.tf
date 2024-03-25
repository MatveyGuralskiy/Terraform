variable "Region" {
  description = "Enter AWS Region you want to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Instance_type" {
  description = "Instance type you want to work with"
  type        = string
  default     = "t2.micro"
}

variable "Users" {
  description = "List of created IAM Users"
  type        = list(any)
  default     = ["Matvey", "Mike", "Lebron", "Sophie"]
}

variable "Resources_Types" {
  description = "Resources Types in AWS"
  type        = list(any)
  default     = ["Instance", "Security group", "Load-Balancer", "Auto-Scaling-group"]
}
