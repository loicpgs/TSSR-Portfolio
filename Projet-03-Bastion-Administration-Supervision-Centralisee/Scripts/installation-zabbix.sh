#!/bin/bash

mkdir -p ~/zabbix
cd ~/zabbix

cat > docker-compose.yml << 'EOF'
services:
  mysql:
    image: mysql:8.0
    container_name: zabbix-mysql
    restart: unless-stopped
    command:
      - --character-set-server=utf8mb4
      - --collation-server=utf8mb4_bin
      - --log_bin_trust_function_creators=1
    environment:
      MYSQL_DATABASE: zabbix
      MYSQL_USER: zabbix
      MYSQL_PASSWORD: zabbixpass
      MYSQL_ROOT_PASSWORD: rootpass
    volumes:
      - mysql_data:/var/lib/mysql

  zabbix-server:
    image: zabbix/zabbix-server-mysql:alpine-7.0-latest
    container_name: zabbix-server
    restart: unless-stopped
    environment:
      DB_SERVER_HOST: mysql
      MYSQL_DATABASE: zabbix
      MYSQL_USER: zabbix
      MYSQL_PASSWORD: zabbixpass
    depends_on:
      - mysql
    ports:
      - "10051:10051"

  zabbix-web:
    image: zabbix/zabbix-web-nginx-mysql:alpine-7.0-latest
    container_name: zabbix-web
    restart: unless-stopped
    environment:
      DB_SERVER_HOST: mysql
      MYSQL_DATABASE: zabbix
      MYSQL_USER: zabbix
      MYSQL_PASSWORD: zabbixpass
      ZBX_SERVER_HOST: zabbix-server
      PHP_TZ: Europe/Paris
    depends_on:
      - mysql
      - zabbix-server
    ports:
      - "8081:8080"

  zabbix-agent:
    image: zabbix/zabbix-agent2:alpine-7.0-latest
    container_name: zabbix-agent
    restart: unless-stopped
    environment:
      ZBX_HOSTNAME: srvbast
      ZBX_SERVER_HOST: zabbix-server
    privileged: true
    pid: host
    ports:
      - "10050:10050"

volumes:
  mysql_data:
EOF

docker compose up -d
docker ps