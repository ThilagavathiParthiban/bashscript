#!/bin/bash
#installing LAMP stack

#installing apache
sudo apt-get update
sudo apt-get install apache2 -y
#checking the status of apache2
sudo systemctl status apache2

#installing mysql
sudo apt install mysql-server -y

#installing php
sudo apt install php libapache2-mod-php php-mysql -y

#editing the config
sudo sed -i 's/index.html/index.php/g' /etc/apache2/mods-enabled/dir.conf

#installing php modules
sudo apt-cache search php- |less
sudo apt install php8.1-tidy -y
sudo systemctl restart apache2

#testing php processing
sudo cp -r /home/ubuntu/php.sh /var/www/html/info.php





