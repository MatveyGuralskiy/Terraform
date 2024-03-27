variable "Region" {
  description = "Enter AWS Region you want to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Instance_type" {
  description = "AWS Instance type you want"
  type        = string
  default     = "t2.micro"
}

variable "Enviroment" {
  description = "Your Environment of Project"
  type        = string
  default     = "Production"
}
