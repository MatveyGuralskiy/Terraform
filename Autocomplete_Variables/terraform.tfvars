Region        = "eu-west-2"
Instance_type = "t2.micro"
Monitoring    = false

Common_tags = {
  Owner      = "Matvey Guralskiy"
  Project    = "Website Flask"
  Enviroment = "Development"
}

Allow_ports = ["80", "5000", "22"]
