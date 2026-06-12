# Contexte et Architecture

## Présentation du projet

Dans le cadre de ma formation de Technicien Supérieur Systèmes et Réseaux (TSSR), j'ai réalisé une infrastructure de bastion d'administration centralisé permettant de simplifier et sécuriser l'accès aux différents systèmes du réseau.

L'objectif principal est de centraliser les accès d'administration au sein d'une interface unique tout en assurant la supervision de l'infrastructure.

## Objectifs

Les objectifs du projet sont les suivants :

* Centraliser les accès d'administration ;
* Sécuriser les connexions aux équipements ;
* Permettre l'accès distant via un navigateur web ;
* Superviser les ressources système ;
* Faciliter l'administration des services conteneurisés.

## Architecture mise en place

L'infrastructure repose sur les composants suivants :

* Serveur Debian ;
* Apache Guacamole ;
* Docker ;
* Portainer ;
* UFW ;
* Prometheus ;
* Node Exporter ;
* Grafana.

## Services déployés

### Guacamole

Apache Guacamole permet l'accès distant aux équipements via une simple interface web.

Les protocoles pris en charge sont :

* SSH ;
* RDP ;
* VNC.

### Portainer

Portainer simplifie l'administration des conteneurs Docker via une interface graphique.

### Prometheus

Prometheus collecte les métriques système et applicatives.

### Grafana

Grafana permet la visualisation des métriques sous forme de tableaux de bord.

## Schéma d'architecture

Le schéma détaillé de l'infrastructure est disponible dans le dossier Schemas.

## Résultat attendu

L'utilisateur accède à une interface unique lui permettant :

* d'administrer des serveurs Linux ;
* d'accéder à des postes Windows ;
* de piloter des postes via VNC ;
* de superviser l'ensemble de l'infrastructure.
