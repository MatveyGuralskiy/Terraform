#!/bin/bash
# Script to display 2 variables of an instance in an HTML website

echo "Starting the script automatically"

#Install Apache web server
yum -y update
yum -y install httpd

# Generate HTML content
cat <<-EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform Webserver</title>
    <style>
        h1 {
            font-family: monospace;
            font-size: 70px;
            text-align: center;
            color: white;
        }
        p {
            font-family: monospace;
            font-size: 35px;
            text-align: center;
        }
        body {
            background-color: mediumpurple;
        }
    </style>
</head>
<body>
    <h1>Terraform Webserver</h1>
    <p>Created by ${Name} ${Surname} using dynamic external file <strong>script.sh.tpl</strong></p>
     <p>
        %{ for x in tools ~}
        DevOps Tool: ${x}<br>
        %{ endfor ~}
    </p>
</body>
</html>
EOF

# Start Apache web server and enable it to start on boot
service httpd start
chkconfig httpd on

echo "Script finished successfully"
