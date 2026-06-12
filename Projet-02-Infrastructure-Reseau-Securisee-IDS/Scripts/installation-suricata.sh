#!/bin/bash

sudo apt update
sudo apt install suricata -y

sudo systemctl enable suricata
sudo systemctl restart suricata

sudo systemctl status suricata
