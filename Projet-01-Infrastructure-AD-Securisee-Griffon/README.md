# Projet 01 – Infrastructure Active Directory Sécurisée Griffon

## Présentation du projet

Ce projet a été réalisé dans le cadre de ma préparation au titre professionnel **Technicien Supérieur Systèmes et Réseaux (TSSR)**.

Il s'appuie sur les compétences acquises lors de mon stage de fin de formation effectué dans le secteur de l'aérospatial et de la défense.

L'objectif consiste à concevoir, déployer et sécuriser une infrastructure Active Directory complète sous Windows Server 2022 au sein d'un laboratoire personnel reproduisant des problématiques d'administration système rencontrées dans un environnement professionnel.

L'ensemble de l'infrastructure présentée dans ce dépôt a été recréé à des fins pédagogiques.

> **Important :**
>
> Tous les noms d'hôtes, utilisateurs, groupes, adresses IP, schémas et configurations présents dans ce projet sont fictifs.
>
> Aucune donnée opérationnelle, configuration sensible ou information issue d'un environnement professionnel réel n'est reproduite dans ce dépôt.

---

## Contexte technique

Le laboratoire Griffon simule le système d'information d'une entreprise spécialisée dans les secteurs de l'aérospatial et de la défense.

L'infrastructure repose sur un domaine Active Directory centralisé permettant :

* la gestion des identités ;
* l'administration des accès ;
* l'application de stratégies de sécurité ;
* la gestion des postes clients ;
* l'administration des ressources informatiques.

---

## Objectifs pédagogiques

Ce projet permet de démontrer les compétences suivantes :

* déploiement d'un contrôleur de domaine Windows Server 2022 ;
* installation et configuration des services Active Directory Domain Services ;
* déploiement et administration du service DNS ;
* structuration d'un annuaire Active Directory ;
* mise en œuvre du modèle AGDLP ;
* création et administration des groupes de sécurité ;
* déploiement de stratégies de groupe (GPO) ;
* sécurisation de l'infrastructure ;
* automatisation via PowerShell ;
* documentation d'exploitation.

---

## Architecture du laboratoire

### Domaine Active Directory

| Élément               | Valeur              |
| --------------------- | ------------------- |
| Domaine               | griffon.local       |
| Nom NetBIOS           | GRIFFON             |
| Contrôleur de domaine | SRV-AD01            |
| Système               | Windows Server 2022 |

### Services déployés

* Active Directory Domain Services (AD DS)
* DNS intégré à Active Directory
* Gestion des stratégies de groupe (GPO)
* Gestion centralisée des utilisateurs et groupes
* Audit et journalisation
* Comptes privilégiés
* Modèle AGDLP

---

## Technologies utilisées

| Technologie                      | Usage                                  |
| -------------------------------- | -------------------------------------- |
| Windows Server 2022              | Infrastructure serveur                 |
| Active Directory Domain Services | Gestion des identités                  |
| DNS                              | Résolution de noms                     |
| PowerShell                       | Automatisation et administration       |
| Group Policy Management          | Gestion centralisée des configurations |
| Hyper-V                          | Virtualisation                         |
| Git                              | Gestion de versions                    |
| GitHub                           | Documentation et portfolio             |
| CIS Benchmarks                   | Référentiel de durcissement            |
| Recommandations ANSSI            | Bonnes pratiques de sécurité           |

---

## Mesures de sécurité mises en œuvre

Le projet intègre plusieurs mécanismes de sécurisation inspirés des bonnes pratiques Microsoft, CIS et ANSSI :

* séparation des comptes utilisateurs et administrateurs ;
* mise en œuvre du principe du moindre privilège ;
* application du modèle AGDLP ;
* déploiement de GPO de sécurité ;
* durcissement des postes et serveurs ;
* désactivation des protocoles obsolètes ;
* journalisation des événements de sécurité ;
* activation de l'audit avancé ;
* sécurisation de l'administration PowerShell.

---

## Compétences démontrées

### Administration systèmes

* Installation Windows Server
* Gestion Active Directory
* Gestion DNS
* Administration des rôles Windows

### Administration des identités

* Gestion des utilisateurs
* Gestion des groupes
* Gestion des permissions
* Modèle AGDLP

### Sécurité

* Gestion des stratégies de groupe
* Durcissement système
* Audit et journalisation
* Application des bonnes pratiques ANSSI et CIS

### Automatisation

* Scripts PowerShell
* Déploiement automatisé
* Gestion de configuration

---

## Structure du dépôt

```text
Projet-01-Infrastructure-AD-Securisee-Griffon
│
├── Documentation
├── Scripts
├── GPO
├── Schemas
├── Captures
└── README.md
```

### Documentation

Documentation technique complète du projet.

### Scripts

Scripts PowerShell utilisés pour le déploiement et l'administration.

### GPO

Documentation et configuration des stratégies de groupe.

### Schémas

Diagrammes d'architecture et représentations de l'infrastructure.

### Captures

Captures d'écran permettant de documenter les différentes étapes du projet.

---



