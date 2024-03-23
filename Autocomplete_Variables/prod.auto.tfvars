Region        = "eu-west-1"
Instance_type = "t2.micro"
Monitoring    = false

Common_tags = {
  Owner      = "Matvey Guralskiy"
  Project    = "Website Flask"
  Enviroment = "Production"
}

Allow_ports = ["80", "5000", "443"]
