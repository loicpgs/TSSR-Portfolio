# Projet 02 – Infrastructure Réseau Sécurisée et Détection d'Intrusion

## Présentation

Ce projet a été réalisé dans le cadre de la préparation du titre professionnel **Technicien Supérieur Systèmes et Réseaux (TSSR)**.

L'objectif est de concevoir et déployer une infrastructure réseau sécurisée reposant sur un routeur Linux Debian assurant le routage, le NAT, le filtrage des flux réseau ainsi que la détection d'intrusion.

Le projet intègre également une solution de supervision permettant la centralisation et la visualisation des événements de sécurité générés par l'infrastructure.

---

## Contexte

Dans de nombreuses infrastructures professionnelles, les équipements réseau assurent non seulement le routage des communications mais également la sécurisation et la surveillance des flux.

Ce laboratoire reproduit un environnement permettant :

* le routage entre un réseau local et Internet ;
* la sécurisation des communications ;
* la détection d'activités suspectes ;
* la centralisation des journaux de sécurité ;
* la supervision en temps réel des événements réseau.

---

## Objectifs pédagogiques

Le projet vise à démontrer les compétences suivantes :

* administration réseau sous Linux ;
* configuration du routage IP ;
* mise en œuvre du NAT ;
* configuration d'un firewall ;
* déploiement d'un IDS ;
* supervision de sécurité ;
* analyse des journaux système ;
* documentation technique.

---

## Architecture du laboratoire

### Infrastructure réseau

| Élément        | Fonction                |
| -------------- | ----------------------- |
| Routeur Debian | Routage et sécurisation |
| Réseau LAN     | Réseau interne          |
| Interface WAN  | Accès Internet          |
| Client Windows | Poste utilisateur       |
| Suricata       | Détection d'intrusion   |
| Grafana        | Supervision             |
| Loki           | Centralisation des logs |
| Promtail       | Collecte des journaux   |

---

## Technologies utilisées

### Système

* Debian Linux

### Réseau

* Routage IP
* NAT
* iptables

### Sécurité

* Suricata IDS
* Emerging Threats Open
* Analyse du trafic réseau

### Supervision

* Grafana
* Loki
* Promtail

### Outils de test

* Nmap
* Ping
* Outils réseau Linux

---

## Fonctionnalités mises en œuvre

### Routage réseau

* Configuration des interfaces réseau
* Activation du routage IP
* Communication LAN ↔ WAN

### NAT

* Translation d'adresses privées
* Accès Internet pour le réseau interne

### Firewall

* Filtrage des flux entrants
* Contrôle des communications réseau

### Détection d'intrusion

* Détection des requêtes ICMP
* Détection des scans réseau
* Analyse temps réel du trafic

### Supervision

* Centralisation des événements de sécurité
* Visualisation graphique des alertes
* Analyse des incidents réseau

---

## Compétences démontrées

### Administration Linux

* Configuration réseau
* Gestion des services
* Analyse des journaux

### Administration Réseau

* Routage IP
* NAT
* Firewall
* Diagnostic réseau

### Cybersécurité

* IDS Suricata
* Détection d'intrusion
* Analyse des événements
* Investigation réseau

### Supervision

* Grafana
* Loki
* Promtail
* Centralisation des logs

### Documentation

* Procédures techniques
* Captures d'exploitation
* Schémas d'architecture

---

## Résultats obtenus

À l'issue du projet :

* le routage fonctionne entre le LAN et Internet ;
* le NAT permet la communication des postes internes ;
* le firewall filtre les flux réseau ;
* Suricata détecte les comportements suspects ;
* les événements sont centralisés ;
* Grafana permet la visualisation des alertes en temps réel.

Cette architecture reproduit les principes utilisés dans les infrastructures modernes de supervision et de détection d'intrusion.

---

## Structure du projet

```text
Projet-02-Infrastructure-Reseau-Securisee-IDS
│
├── Documentation
├── Captures
├── Schemas
├── Configurations
├── Scripts
└── README.md
```

---

## Statut

✅ Projet terminé et documenté dans le cadre du portfolio TSSR.
