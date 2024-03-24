variable "Region" {
  description = "Enter AWS Region to work with:"
  type        = string
  default     = "eu-west-3"
}

variable "Environment" {
  description = "Environment of the Project"
  type        = string
  default     = "Production"
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
