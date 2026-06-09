

# Rôles et services du serveur SRV-AD01

## Présentation

Le serveur **SRV-AD01** constitue le cœur de l'infrastructure du domaine **GRIFFON.LOCAL**.

Il héberge les services fondamentaux permettant l'authentification des utilisateurs, la gestion centralisée des ressources, l'application des politiques de sécurité ainsi que la résolution de noms au sein du système d'information.

L'ensemble de ces services est déployé sous **Windows Server 2022**.

---

## Active Directory Domain Services (AD DS)

### Description

Le rôle Active Directory Domain Services permet la mise en œuvre d'un annuaire centralisé regroupant l'ensemble des objets de l'entreprise.

### Fonctions assurées

* gestion des comptes utilisateurs ;
* gestion des groupes de sécurité ;
* gestion des ordinateurs du domaine ;
* gestion des unités d'organisation (OU) ;
* authentification centralisée ;
* contrôle des accès aux ressources ;
* application des stratégies de groupe.

### Bénéfices

L'utilisation d'Active Directory permet de centraliser l'administration et de simplifier la gestion quotidienne de l'infrastructure.

---

## Service DNS

### Description

Le service DNS est intégré à Active Directory afin d'assurer la résolution de noms nécessaire au fonctionnement du domaine.

### Fonctions assurées

* résolution des noms des serveurs ;
* résolution des noms des postes clients ;
* localisation des contrôleurs de domaine ;
* enregistrement dynamique des machines ;
* support des services Active Directory.

### Zone DNS déployée

| Élément               | Valeur                      |
| --------------------- | --------------------------- |
| Zone DNS principale   | griffon.local               |
| Type de zone          | Intégrée à Active Directory |
| Mise à jour dynamique | Activée                     |

### Importance du service

Le bon fonctionnement d'Active Directory dépend directement de la disponibilité du service DNS.

---

## Gestion des stratégies de groupe (Group Policy)

### Description

Les stratégies de groupe permettent d'appliquer automatiquement des paramètres de configuration et de sécurité aux utilisateurs et aux ordinateurs du domaine.

### Domaines couverts

* configuration des postes clients ;
* configuration des serveurs ;
* application des paramètres de sécurité ;
* déploiement des restrictions utilisateurs ;
* configuration du pare-feu Windows ;
* durcissement du système ;
* journalisation avancée.

### GPO déployées

Dans le cadre du projet Griffon, plusieurs GPO de sécurité sont mises en œuvre afin d'appliquer des recommandations inspirées des référentiels Microsoft, CIS et ANSSI.

---

## Audit et journalisation

### Description

Les mécanismes d'audit permettent de tracer les événements importants liés à la sécurité et à l'administration du système d'information.

### Événements surveillés

* ouvertures de session ;
* échecs d'authentification ;
* modifications des comptes utilisateurs ;
* modifications des groupes de sécurité ;
* activités administratives ;
* exécution de scripts PowerShell.

### Objectifs

* améliorer la traçabilité ;
* détecter les anomalies ;
* faciliter les opérations d'investigation ;
* renforcer la sécurité globale de l'infrastructure.

---

## Vue d'ensemble des services hébergés

| Service                          | Fonction principale                            |
| -------------------------------- | ---------------------------------------------- |
| Active Directory Domain Services | Gestion centralisée des identités et des accès |
| DNS                              | Résolution de noms du domaine                  |
| Group Policy                     | Application centralisée des configurations     |
| Audit et Journalisation          | Suivi des événements de sécurité               |

---

## Résultat obtenu

Le serveur **SRV-AD01** fournit l'ensemble des services nécessaires au fonctionnement du domaine **GRIFFON.LOCAL**.

Cette architecture permet une administration centralisée, une meilleure maîtrise des accès et l'application cohérente des politiques de sécurité au sein de l'environnement Griffon.
