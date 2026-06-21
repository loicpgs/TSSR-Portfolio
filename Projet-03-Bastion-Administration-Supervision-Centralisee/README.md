# Projet 03 – Bastion d'Administration et Supervision Centralisée

## Présentation

Dans le cadre de ma formation de Technicien Supérieur Systèmes et Réseaux (TSSR), j'ai réalisé une infrastructure de bastion d'administration centralisée permettant de sécuriser et simplifier l'accès aux systèmes tout en assurant leur supervision et leur sauvegarde.

L'objectif principal est de centraliser les accès d'administration au sein d'une interface unique accessible via un navigateur web tout en garantissant la disponibilité des services grâce à une stratégie de sauvegarde automatisée.

---

## Objectifs

* Centraliser les accès d'administration ;
* Sécuriser les connexions aux équipements ;
* Faciliter l'administration des systèmes ;
* Superviser les ressources du serveur ;
* Déployer une architecture conteneurisée ;
* Assurer la sauvegarde des configurations et des données critiques.

---

## Technologies utilisées

* Debian 13
* Docker
* Docker Compose
* Apache Guacamole
* Guacd
* Portainer
* Zabbix
* MariaDB
* UFW
* Cron
* Bash

---

## Architecture

L'infrastructure repose sur un serveur Debian hébergeant plusieurs services conteneurisés.

### Composants déployés

* Apache Guacamole
* Guacd
* Portainer
* Zabbix Server
* Zabbix Agent
* Zabbix Web
* MariaDB
* UFW

Le schéma d'architecture est disponible dans le dossier :

```text
Captures/
```

---

## Administration centralisée

Apache Guacamole permet d'accéder aux équipements via une interface web sans installation de client spécifique.

### Protocoles pris en charge

* SSH
* RDP
* VNC

Cette solution simplifie l'administration des systèmes tout en centralisant les accès depuis un portail unique.

---

## Gestion des conteneurs

Portainer permet l'administration simplifiée des conteneurs Docker grâce à une interface graphique centralisée.

Les fonctionnalités utilisées incluent :

* Gestion des conteneurs ;
* Gestion des volumes ;
* Gestion des réseaux Docker ;
* Déploiement et maintenance des services.

---

## Supervision

Zabbix a été déployé afin d'assurer la supervision du serveur bastion.

La solution permet :

* La surveillance du processeur ;
* La surveillance de la mémoire ;
* Le suivi du stockage ;
* La supervision des services ;
* L'analyse des performances du système ;
* Le suivi de l'état général de l'infrastructure.

---

## Sauvegarde

Une stratégie de sauvegarde automatisée a été mise en place afin de garantir la protection des données critiques du bastion.

### Éléments sauvegardés

* Fichiers Docker Compose ;
* Volumes Docker ;
* Base de données MariaDB ;
* Configurations système essentielles ;
* Scripts d'administration.

### Fonctionnalités

* Sauvegarde automatisée via Cron ;
* Archivage compressé ;
* Horodatage des sauvegardes ;
* Conservation des données critiques ;
* Préparation des procédures de restauration.

Cette solution permet d'améliorer la résilience de l'infrastructure en cas d'incident ou de perte de données.

---

## Sécurisation

Le serveur est protégé par le pare-feu UFW.

### Services autorisés

* SSH
* Guacamole
* Portainer
* Zabbix

Les règles de filtrage limitent l'exposition des services et renforcent la sécurité globale du système.

---

## Documentation

La documentation complète du projet est disponible dans le dossier :

```text
Documentation/
```

Elle détaille :

* L'installation du serveur Debian ;
* La configuration du pare-feu ;
* Le déploiement de Docker ;
* L'installation de Guacamole ;
* L'administration via Portainer ;
* La mise en place de Zabbix ;
* La supervision du bastion ;
* La stratégie de sauvegarde ;
* Les procédures de restauration.

---

## Scripts

Les scripts utilisés pour le déploiement et la configuration de l'infrastructure sont disponibles dans le dossier :

```text
Scripts/
```

Ils permettent notamment :

* L'installation de Docker ;
* Le déploiement de Guacamole ;
* L'installation de Portainer ;
* La mise en place de Zabbix ;
* La configuration du pare-feu UFW ;
* La sauvegarde automatisée des données ;
* L'archivage des configurations du bastion.

---

## Compétences mises en œuvre

### Administration système

* Installation et configuration Debian ;
* Gestion des services Linux ;
* Administration SSH ;
* Planification de tâches automatisées avec Cron.

### Sécurité

* Configuration d'UFW ;
* Contrôle des accès ;
* Sécurisation des services ;
* Protection des données critiques.

### Conteneurisation

* Déploiement Docker ;
* Utilisation de Docker Compose ;
* Administration de conteneurs.

### Supervision

* Installation de Zabbix ;
* Configuration d'agents ;
* Surveillance des ressources système ;
* Analyse des performances.

### Sauvegarde et restauration

* Sauvegarde automatisée sous Linux ;
* Export de bases de données MariaDB ;
* Sauvegarde de configurations Docker ;
* Archivage et compression de données ;
* Documentation des procédures de restauration.

---

## Résultats obtenus

Cette infrastructure permet :

* L'administration centralisée des équipements ;
* La gestion simplifiée des services ;
* La supervision du serveur bastion ;
* La sauvegarde automatisée des composants critiques ;
* Une meilleure visibilité sur l'état du système ;
* Une meilleure résilience de l'infrastructure ;
* Une architecture facilement extensible.

---

## Conclusion

Ce projet m'a permis de renforcer mes compétences en administration système Linux, sécurité, conteneurisation, supervision et sauvegarde.

Il illustre la mise en œuvre d'une solution professionnelle de bastion d'administration associée à une plateforme moderne de supervision et à une stratégie de protection des données conforme aux bonnes pratiques d'exploitation des systèmes d'information.
