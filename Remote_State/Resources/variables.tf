variable "Region" {
  description = "Enter AWS Region to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Environment" {
  description = "Resources Project Environment"
  type        = string
  default     = "Production"
}
