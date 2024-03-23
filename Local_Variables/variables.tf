variable "Region" {
  description = "Enter Region AWS for Deployment: "
  type        = string
  default     = "eu-west-3"
}

variable "Instance_type" {
  description = "Enter the Type of Server you want in AWS: "
  type        = string
  default     = "t2.micro"
}

variable "Allow_ports" {
  description = "Allow ports of Security group"
  type        = list(any)
  default     = ["80", "5000"]
}

variable "Monitoring" {
  description = "Monitoring of Resource Instance"
  type        = bool
  default     = false
}

variable "Project_name" {
  description = "Project name"
  type        = string
  default     = "Website Flask"
}

variable "Environment" {
  description = "Environment of the Project"
  type        = string
  default     = "Staging"
}

variable "Owner_Name" {
  description = "Name owner of the project"
  type        = string
  default     = "Matvey"
}

variable "Owner_Surname" {
  description = "Surname owner of the project"
  type        = string
  default     = "Guralskiy"
}

locals {
  Project       = "${var.Project_name} - in ${var.Environment}"
  Project_owner = "${var.Owner_Name} - ${var.Owner_Surname}"
  Environment   = var.Environment
}
