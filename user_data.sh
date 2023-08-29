#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx wget
sudo systemctl start nginx
wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
unzip -o 2117_infinite_loop.zip
cp -r 2117_infinite_loop/* /var/www/html/
systemctl restart nginx
