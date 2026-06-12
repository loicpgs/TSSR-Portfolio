# Installation de Zabbix

## Objectif

Afin de compléter les fonctionnalités du bastion d'administration, une solution de supervision a été déployée.

Zabbix permet de surveiller l'état du serveur, les ressources système ainsi que les services critiques de l'infrastructure.

L'objectif est de disposer d'une visibilité en temps réel sur le fonctionnement du bastion.

## Architecture

La supervision repose sur plusieurs conteneurs Docker :

- Zabbix Server
- Zabbix Agent
- MySQL
- Interface Web Zabbix

L'ensemble des composants est déployé sur le serveur Debian à l'aide de Docker Compose.

## Vérification de Docker

Vérification de l'installation :

```bash
docker --version
docker compose version
```

## Création du dossier de travail

```bash
mkdir ~/zabbix
cd ~/zabbix
```

## Déploiement des conteneurs

Les services ont été déployés à l'aide d'un fichier Docker Compose.

Lancement de l'infrastructure :

```bash
docker compose up -d
```

## Vérification du déploiement

Affichage des conteneurs :

```bash
docker ps
```

Résultat attendu :

```text
zabbix-mysql
zabbix-server
zabbix-web
zabbix-agent
```

## Accès à l'interface Web

L'interface d'administration est accessible depuis un navigateur :

```text
http://IP_DU_SERVEUR:8081
```

## Authentification

Identifiants par défaut :

```text
Utilisateur : Admin
Mot de passe : zabbix
```

## Vérification des services

Contrôle des conteneurs :

```bash
docker ps
```

Consultation des journaux :

```bash
docker logs zabbix-server
docker logs zabbix-agent
```

## Résultat

La plateforme Zabbix est opérationnelle et permet désormais de superviser le serveur bastion ainsi que les services hébergés.