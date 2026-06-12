#!/bin/bash

mkdir -p ~/guacamole-docker
cd ~/guacamole-docker

cat > docker-compose.yml << 'EOF'
services:
  mariadb:
    image: mariadb:11
    container_name: guac-mariadb
    restart: unless-stopped
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: guacadb
      MYSQL_USER: guaca_nachos
      MYSQL_PASSWORD: Azerty77!
    volumes:
      - guac_db:/var/lib/mysql

  guacd:
    image: guacamole/guacd:1.6.0
    container_name: guacd
    restart: unless-stopped

  guacamole:
    image: guacamole/guacamole:1.6.0
    container_name: guacamole
    restart: unless-stopped
    depends_on:
      - mariadb
      - guacd
    ports:
      - "8080:8080"
    environment:
      GUACD_HOSTNAME: guacd
      MYSQL_HOSTNAME: mariadb
      MYSQL_PORT: 3306
      MYSQL_DATABASE: guacadb
      MYSQL_USER: guaca_nachos
      MYSQL_PASSWORD: Azerty77!

volumes:
  guac_db:
EOF

docker compose up -d
docker ps