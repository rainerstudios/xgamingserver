#!/bin/bash
tput setaf 1; echo "Updating system"
sleep 1
sudo apt update -y
tput setaf 1; echo "stopping nginx"
sleep 1
systemctl stop nginx
tput setaf 1; echo "renewing cert"
sleep 1
certbot renew
tput setaf 1; echo "starting nginx"
sleep 1
systemctl start nginx
tput setaf 1; echo "restarting wings"
sleep 1
systemctl restart wings



