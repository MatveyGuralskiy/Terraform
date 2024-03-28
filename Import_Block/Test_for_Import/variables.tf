variable "Region" {
  description = "AWS Region you want to work with"
  type        = string
  default     = "eu-west-3"
}

variable "Instance_type" {
  description = "AWS Instance type you want to work with"
  type        = string
  default     = "t2.micro"
}

variable "Environment" {
  description = "AWS Environment for Resources"
  type        = list(any)
  default     = ["Production", "Staging", "Development"]
}
