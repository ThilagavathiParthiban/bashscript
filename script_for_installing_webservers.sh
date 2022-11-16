#!/bin/bash
#installing webservers
clear
echo
echo "enter the webserver name"
read wname
sudo apt update
sudo apt install $wname -y
sudo systemctl status $wname |grep active

if pgrep -x "$wname"
then
        echo " active"
else
        echo "inactive"
        sudo systemctl start $wname
fi
cd /var/www/html
ls
echo "enter the file name (index.html /index.nginx-debian.html)"
read a
sudo truncate -s 0 $a
echo "enter the file to be copied"
read b
echo "enter the file located directory"
read c
echo "enter the path to copy the file"
read d

sudo cp -r $c/$b  $d/$a
ls 
