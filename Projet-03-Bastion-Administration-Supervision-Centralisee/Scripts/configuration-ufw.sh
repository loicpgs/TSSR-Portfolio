#!/bin/bash

sudo apt update
sudo apt install ufw -y

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw allow 9000/tcp
sudo ufw allow 9443/tcp
sudo ufw allow 8081/tcp
sudo ufw allow 10050/tcp
sudo ufw allow 10051/tcp

sudo ufw enable
sudo ufw status verbose