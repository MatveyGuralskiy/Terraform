output "Created_Users" {
  description = "All information about Users"
  value       = aws_iam_user.Users
}

output "Created_Users_Names" {
  description = "Only Names of Users"
  value       = aws_iam_user.Users[*].name
}

output "Created_Users_Names_ARN" {
  description = "Names and ARN of Users"
  value = [
    for user in aws_iam_user.Users :
    "Username: ${user.name} has ARN: ${user.arn}"
  ]
}

output "Created_Users_Map" {
  description = "Unique ID of Users : Username"
  value = {
    for user in aws_iam_user.Users :
    user.unique_id => user.name
  }
}

output "Created_Users_Length" {
  description = "Print Names length equal to six"
  value = [
    for user in aws_iam_user.Users :
    user.name
    if length(user.name) == 6
  ]
}

output "Instance_ID" {
  description = "Every ID Name of Instances"
  value       = aws_instance.Ubuntu_Linux[*].id
}

output "Instance_ID_Public_IP" {
  description = "Instance ID : Public IP"
  value = {
    for instance in aws_instance.Ubuntu_Linux :
    instance.id => instance.public_ip
  }
}
