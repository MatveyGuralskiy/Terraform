variable "Region" {
  description = "Your AWS Region for Resources"
  default     = "us-east-1"
  type        = string
}

variable "Environment" {
  description = "Environment of the Project"
  type        = list(any)
  default     = ["Development", "Staging", "Production"]
}

variable "Instance_type" {
  description = "Instance type for EC2 Resources"
  type        = string
  default     = "t2.micro"
}
