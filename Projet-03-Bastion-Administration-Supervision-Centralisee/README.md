# Projet 03 – Bastion d’Administration et Supervision

## Présentation

Dans le cadre de ma formation de Technicien Supérieur Systèmes et Réseaux (TSSR), j'ai réalisé une infrastructure de bastion d'administration centralisé permettant de sécuriser et simplifier l'accès aux systèmes tout en assurant leur supervision.

L'objectif principal est de centraliser les accès d'administration au sein d'une interface unique accessible via un navigateur web.

---

## Objectifs

- Centraliser les accès d'administration ;
- Sécuriser les connexions aux équipements ;
- Faciliter l'administration des systèmes ;
- Superviser les ressources du serveur ;
- Déployer une architecture conteneurisée.

---

## Technologies utilisées

- Debian 13
- Docker
- Docker Compose
- Apache Guacamole
- Guacd
- Portainer
- UFW
- Zabbix
- MariaDB

---

## Architecture

L'infrastructure repose sur un serveur Debian hébergeant plusieurs services conteneurisés.

### Composants déployés

- Apache Guacamole
- Guacd
- Portainer
- Zabbix Server
- Zabbix Agent
- Zabbix Web
- MariaDB
- UFW

Le schéma d'architecture est disponible dans le dossier :

```text
Captures/
```

---

## Administration centralisée

Apache Guacamole permet d'accéder aux équipements via une interface web sans installation de client spécifique.

Protocoles pris en charge :

- SSH
- RDP
- VNC

---

## Gestion des conteneurs

Portainer permet l'administration simplifiée des conteneurs Docker grâce à une interface graphique centralisée.

---

## Supervision

Zabbix a été déployé afin d'assurer la supervision du serveur bastion.

La solution permet :

- la surveillance du processeur ;
- la surveillance de la mémoire ;
- le suivi du stockage ;
- la supervision des services ;
- l'analyse des performances du système.

---

## Sécurisation

Le serveur est protégé par le pare-feu UFW.

Services autorisés :

- SSH
- Guacamole
- Portainer
- Zabbix

---

## Documentation

La documentation complète du projet est disponible dans le dossier :

```text
Documentation/
```

Elle détaille :

- l'installation du serveur Debian ;
- la configuration du pare-feu ;
- le déploiement de Docker ;
- l'installation de Guacamole ;
- l'administration via Portainer ;
- la mise en place de Zabbix ;
- la supervision du bastion.

---

## Compétences mises en œuvre

### Administration système

- Installation et configuration Debian ;
- Gestion des services Linux ;
- Administration SSH.

### Sécurité

- Configuration d'UFW ;
- Contrôle des accès ;
- Sécurisation des services.

### Conteneurisation

- Déploiement Docker ;
- Utilisation de Docker Compose ;
- Administration de conteneurs.

### Supervision

- Installation de Zabbix ;
- Configuration d'un agent ;
- Surveillance des ressources système ;
- Analyse des performances.

---

## Résultats obtenus

Cette infrastructure permet :

- l'administration centralisée des équipements ;
- la gestion simplifiée des services ;
- la supervision du serveur bastion ;
- une meilleure visibilité sur l'état du système ;
- une architecture facilement extensible.

---

## Conclusion

Ce projet m'a permis de renforcer mes compétences en administration système Linux, sécurité, conteneurisation et supervision.

Il illustre la mise en œuvre d'une solution professionnelle de bastion d'administration associée à une plateforme moderne de supervision.