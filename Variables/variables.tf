variable "Region" {
  description = "Enter Region AWS for Deployment: "
  type        = string
  // default = "eu-west-3"
}

variable "Instance_type" {
  description = "Enter the Type of Server you want in AWS: "
  type        = string
  // default = "t2.micro"
}

variable "Allow_ports" {
  description = "Allow ports of Security group"
  type        = list(any)
  default     = ["80", "5000"]
}

variable "Monitoring" {
  description = "Monitoring of Resource Instance"
  type        = bool
  // default = false
}

variable "Common_tags" {
  description = "Tags for every resource"
  type        = map(any)
  default = {
    Owner      = "Matvey Guralskiy"
    Project    = "Website Flask"
    Enviroment = "Staging"
  }
}
