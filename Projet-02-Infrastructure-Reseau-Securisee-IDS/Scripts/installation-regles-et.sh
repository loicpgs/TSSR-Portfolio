#!/bin/bash

sudo apt update
sudo apt install suricata-update -y

sudo suricata-update

sudo suricata -T -c /etc/suricata/suricata.yaml -v

sudo systemctl restart suricata
