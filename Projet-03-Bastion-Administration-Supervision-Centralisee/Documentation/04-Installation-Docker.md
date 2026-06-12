# Installation de Docker et Docker Compose

## Objectif

Afin de simplifier le déploiement et l'administration des services du bastion, les différentes applications seront exécutées dans des conteneurs Docker.

Cette approche permet :

- l'isolation des services ;
- la facilité de maintenance ;
- la portabilité de l'infrastructure ;
- la simplification des mises à jour.

## Installation des dépendances

Avant l'installation de Docker, les paquets nécessaires sont installés :

```bash
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
```

## Ajout du dépôt Docker

Création du répertoire de stockage des clés :

```bash
sudo install -m 0755 -d /etc/apt/keyrings
```

Téléchargement de la clé Docker :

```bash
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Ajout du dépôt officiel :

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

## Installation de Docker

```bash
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

## Vérification du fonctionnement

Vérification du service :

```bash
sudo systemctl status docker
```

Test du moteur Docker :

```bash
sudo docker run hello-world
```

## Docker Compose

Vérification de Docker Compose :

```bash
docker compose version
```

## Gestion des droits utilisateur

Ajout de l'utilisateur courant au groupe Docker :

```bash
sudo usermod -aG docker $USER
```

Prise en compte :

```bash
newgrp docker
```

## Vérification finale

Liste des conteneurs :

```bash
docker ps
```

Liste des images :

```bash
docker images
```

## Résultat

Docker et Docker Compose sont désormais opérationnels et prêts à héberger les services du bastion :

- Apache Guacamole ;
- Portainer ;
- Prometheus ;
- Grafana.