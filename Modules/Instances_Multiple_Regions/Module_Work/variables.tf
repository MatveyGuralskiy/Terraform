variable "Region" {
  description = "Regions of AWS to work with"
  type        = map(any)
  default = {
    Paris     = "eu-west-3"
    Frankfurt = "eu-central-1"
    London    = "eu-west-2"
  }
}
