# Conclusion

## Bilan du projet

Ce projet a permis de mettre en place une infrastructure complète de bastion d'administration centralisé reposant sur des technologies largement utilisées en environnement professionnel.

L'objectif principal consistait à centraliser et sécuriser les accès d'administration tout en ajoutant une solution de supervision permettant de surveiller l'état de l'infrastructure.

## Compétences mises en œuvre

Au cours de ce projet, plusieurs compétences techniques ont été mobilisées :

### Administration système

- Installation et configuration de Debian ;
- Configuration réseau ;
- Administration SSH ;
- Gestion des services système.

### Sécurité

- Mise en place du pare-feu UFW ;
- Contrôle des flux réseau ;
- Centralisation des accès d'administration ;
- Réduction de la surface d'exposition des équipements.

### Conteneurisation

- Installation de Docker ;
- Utilisation de Docker Compose ;
- Déploiement et administration de conteneurs ;
- Gestion des réseaux et volumes Docker.

### Administration centralisée

- Déploiement d'Apache Guacamole ;
- Gestion des accès SSH ;
- Gestion des accès RDP ;
- Gestion des accès VNC.

### Supervision

- Déploiement de Zabbix ;
- Configuration d'un agent de supervision ;
- Collecte de métriques système ;
- Analyse des performances du serveur.

## Résultats obtenus

L'infrastructure permet désormais :

- L'accès centralisé aux équipements Linux ;
- L'accès centralisé aux postes Windows ;
- L'accès aux environnements graphiques via VNC ;
- L'administration simplifiée des conteneurs grâce à Portainer ;
- La supervision du bastion grâce à Zabbix.

L'ensemble des services est accessible depuis une interface web unique facilitant les opérations d'administration.

## Difficultés rencontrées

Plusieurs problématiques ont été rencontrées durant le projet :

- Configuration des conteneurs Docker ;
- Mise en communication des différents services ;
- Configuration de l'agent Zabbix ;
- Validation de la collecte des métriques.

Ces difficultés ont permis d'approfondir la compréhension du fonctionnement des architectures conteneurisées et des outils de supervision.

## Perspectives d'évolution

Plusieurs améliorations pourraient être apportées :

- Authentification LDAP ou Active Directory ;
- Mise en place du HTTPS avec certificat TLS ;
- Sauvegarde automatisée des conteneurs ;
- Supervision de plusieurs serveurs ;
- Mise en place d'alertes par courriel ;
- Déploiement haute disponibilité.

## Conclusion générale

La réalisation de ce projet a permis de concevoir une infrastructure d'administration centralisée combinant sécurité, accessibilité et supervision.

Ce projet illustre des compétences directement applicables aux métiers de Technicien Supérieur Systèmes et Réseaux, Administrateur Systèmes et Réseaux ou Administrateur Linux, en mettant en œuvre des solutions professionnelles modernes dans un environnement cohérent et sécurisé.