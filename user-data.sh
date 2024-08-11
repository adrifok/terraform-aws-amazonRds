#!/bin/bash
# Update package lists and install necessary packages
apt update -y
apt install -y apache2 awscli

# Start and enable the Apache HTTP server
systemctl start apache2
systemctl enable apache2

# Create a simple HTML page
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

