#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2

mv index.html styles.css /var/www/html

sudo chown -R www-data:www-data /var/www/html
sudo chmod 644 /var/www/html/index.html
sudo chmod 644 /var/www/html/styles.css
sudo chmod 755 /var/www/html

sudo systemctl restart apache2
sudo systemctl status apache2
