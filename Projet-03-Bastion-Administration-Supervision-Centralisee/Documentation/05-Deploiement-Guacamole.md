# Déploiement d'Apache Guacamole

## Objectif

Apache Guacamole est une solution de bastion d'administration accessible via un navigateur web.

Il permet de centraliser l'accès aux équipements informatiques sans nécessiter l'installation de client spécifique sur le poste de l'administrateur.

Les protocoles supportés sont :

- SSH
- RDP
- VNC

## Architecture Guacamole

Le déploiement repose sur trois composants principaux :

- MariaDB : stockage des utilisateurs et des connexions
- Guacd : passerelle de communication
- Guacamole : interface web

## Création du réseau Docker

Création d'un réseau dédié :

```bash
docker network create guacamole-net
```

## Déploiement de MariaDB

Téléchargement de l'image :

```bash
docker pull mariadb:latest
```

Création du conteneur :

```bash
docker run -d \
--name guacamole-db \
--network guacamole-net \
-e MYSQL_ROOT_PASSWORD=MotDePasseFort \
-e MYSQL_DATABASE=guacamole_db \
mariadb:latest
```

## Déploiement de guacd

Téléchargement de l'image :

```bash
docker pull guacamole/guacd
```

Création du conteneur :

```bash
docker run -d \
--name guacd \
--network guacamole-net \
guacamole/guacd
```

## Déploiement de Guacamole

Téléchargement de l'image :

```bash
docker pull guacamole/guacamole
```

Création du conteneur :

```bash
docker run -d \
--name guacamole \
--network guacamole-net \
-p 8080:8080 \
-e GUACD_HOSTNAME=guacd \
-e MYSQL_HOSTNAME=guacamole-db \
-e MYSQL_DATABASE=guacamole_db \
-e MYSQL_USER=guacamole \
-e MYSQL_PASSWORD=MotDePasseFort \
guacamole/guacamole
```

## Vérification des conteneurs

Liste des conteneurs actifs :

```bash
docker ps
```

Résultat attendu :

```text
guacamole
guacd
guacamole-db
```

## Accès à l'interface

Depuis un navigateur :

```text
http://IP_DU_SERVEUR:8080/guacamole
```

## Première connexion

Connexion avec le compte administrateur configuré lors de l'installation.

Après authentification, l'administrateur accède à l'interface permettant la gestion :

- des utilisateurs ;
- des groupes ;
- des connexions ;
- des permissions.

## Avantages

Le déploiement de Guacamole apporte plusieurs bénéfices :

- accès distant via navigateur ;
- centralisation des connexions ;
- suppression des clients locaux ;
- administration simplifiée ;
- meilleure traçabilité des accès.

## Résultat

Le bastion d'administration est désormais accessible depuis une interface web unique permettant de gérer les accès SSH, RDP et VNC de manière centralisée.