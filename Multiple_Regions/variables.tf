variable "Region" {
  description = "Enter AWS Region you want to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Instance_type" {
  description = "Instance type in AWS"
  type        = string
  default     = "t2.micro"
}
