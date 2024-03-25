variable "Region" {
  description = "Enter AWS Region to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Environment" {
  description = "Environment of the project"
  type        = string
  default     = "Production"
}
