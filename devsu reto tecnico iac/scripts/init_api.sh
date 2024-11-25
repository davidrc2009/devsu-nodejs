#!/bin/bash
sudo apt-get update

#Install NGINX
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

#Install PHP
sudo add-apt-repository ppa:ondrej/php -y
sudo add-apt-repository ppa:ondrej/nginx -y

sudo apt-get install php8.1 php8.1-fpm php8.1-cgi php8.1-cli php8.1-common php8.1-imap php8.1-redis php8.1-snmp php8.1-xml php8.1-zip php8.1-mbstring php8.1-curl php8.1-mongodb -y
sudo apt-get install php8.1-mysql -y
sudo apt-get install php8.1-gd -y

#Install Composer
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/bin --filename=composer

#Install Unzip
sudo apt install unzip

#Install certbot
sudo apt install certbot python3-certbot-nginx -y

#Config default
#sudo certbot --nginx -d example.com -d www.example.com
#NO ACTIVAR REDIRECCIÓN, SINO NO FUNCIONARÁ LA COMUNICACIÓN INTERNA