#! /bin/bash
sudo yum update -y
sudo yum install -y httpd git
sudo systemctl start httpd
sudo systemctl enable httpd
sudo git clone https://github.com/MAHESHPOLISETTY/Food-App.git /var/www/html
