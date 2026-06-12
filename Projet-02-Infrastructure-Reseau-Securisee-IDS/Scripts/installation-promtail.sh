#!/bin/bash

cd /tmp

wget https://github.com/grafana/loki/releases/latest/download/promtail-linux-amd64.zip

sudo apt install unzip -y

unzip promtail-linux-amd64.zip

sudo mv promtail-linux-amd64 /usr/local/bin/promtail
sudo chmod +x /usr/local/bin/promtail

cat <<EOF | sudo tee /etc/promtail-config.yml
server:
  http_listen_port: 9080
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://localhost:3100/loki/api/v1/push

scrape_configs:
  - job_name: suricata
    static_configs:
      - targets:
          - localhost
        labels:
          job: suricata
          __path__: /var/log/suricata/eve.json
EOF

promtail -config.file=/etc/promtail-config.yml
