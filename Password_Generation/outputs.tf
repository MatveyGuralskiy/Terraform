output "Database_ID" {
  value       = aws_db_instance.default.id
  description = "Print Database ID"
}

output "Database_Password" {
  value       = data.aws_ssm_parameter.my_password.value
  description = "Print for you Database MySQL Password"
  sensitive   = true
}
