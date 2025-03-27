#!/bin/bash

# Installing docker 
sudo apt update -y

sudo apt install docker.io docker-compose-v2 -y

sudo usermod -aG docker ubuntu

sudo docker run -itd --name nginx -p 80:80 nginx
