provider "aws" {
  region = "eu-west-3"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "administrator"
  password             = "12345678"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name        = "Database"
    Owner       = "Matvey Guralskiy"
    Environment = "Production"
    From        = "Terraform"
  }
}
