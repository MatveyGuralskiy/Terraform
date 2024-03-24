variable "Region" {
  description = "Enter the AWS Region you want to work with"
  type        = string
  default     = "eu-west-1"
}


variable "Instance_type" {
  description = "Enter the Type of Server you want in AWS: "
  type        = string
  default     = "t2.micro"
}
