variable "Region" {
  description = "Enter AWS Region to work with:"
  type        = string
  default     = "eu-west-3"
}

variable "Environment" {
  description = "Environment of the Project"
  type        = string
  default     = "Staging" // You can change to Production, Develop and Staging
}

variable "Production_Owner" {
  description = "Name owner of Production stage"
  type        = string
  default     = "Matvey Guralskiy"
}

variable "Non_Production_Owner" {
  description = "Unknown owner of Production stage"
  type        = string
  default     = "Unknown"
}

variable "EC2_Size" {
  description = "The Type of Instance EC2 in AWS"
  type        = map(any)
  default = {
    "Production" = "t2.small"
    "Staging"    = "t2.micro"
    "Develop"    = "t2.nano"
  }
}

variable "Allow_Ports" {
  description = "All Inbound allow ports of Security group"
  type        = map(any)
  default = {
    "Production" = ["80", "443"]
    "Staging"    = ["80", "443", "8080"]
    "Develop"    = ["80", "443", "8080", "22"]
  }
}
