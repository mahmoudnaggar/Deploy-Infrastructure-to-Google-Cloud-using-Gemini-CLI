#!/bin/bash
# Automated install for Nginx
apt update
apt install -y nginx
echo "Hello s from ds!" > /var/www/html/index.html
systemctl restart nginx
