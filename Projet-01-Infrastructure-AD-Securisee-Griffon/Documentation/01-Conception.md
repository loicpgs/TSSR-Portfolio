
# Conception de l'infrastructure Griffon

## Contexte du projet

Dans le cadre de la préparation du titre professionnel de Technicien Supérieur Systèmes et Réseaux (TSSR), ce projet vise à reproduire dans un environnement de laboratoire les compétences acquises lors d'un stage effectué dans le secteur de l'aérospatial et de la défense.

L'objectif est de concevoir et déployer une infrastructure Active Directory sécurisée sous Windows Server 2022, en s'appuyant sur les bonnes pratiques Microsoft ainsi que sur des recommandations issues des guides ANSSI et des benchmarks CIS.

L'environnement présenté est entièrement fictif et a été créé à des fins pédagogiques. Aucune donnée, configuration ou information issue d'un environnement professionnel réel n'est reproduite.

---

## Objectifs du projet

Le projet a pour finalité la mise en place d'un socle d'administration centralisé permettant :

* la gestion des identités ;
* l'administration des postes de travail ;
* l'administration des serveurs ;
* l'application centralisée des politiques de sécurité ;
* la gestion des droits d'accès selon le modèle AGDLP ;
* le renforcement de la sécurité du système d'information.

---

## Informations sur le domaine

| Élément            | Valeur                           |
| ------------------ | -------------------------------- |
| Nom DNS            | griffon.local                    |
| Nom NetBIOS        | GRIFFON                          |
| Type               | Active Directory Domain Services |
| Niveau fonctionnel | Windows Server 2016              |
| DNS intégré        | Oui                              |

---

## Contrôleur de domaine principal

| Élément                | Valeur              |
| ---------------------- | ------------------- |
| Nom du serveur         | SRV-AD01            |
| Système d'exploitation | Windows Server 2022 |
| Adresse IP             | 192.168.1.10        |
| Rôles installés        | AD DS, DNS          |
| Hyperviseur            | Hyper-V             |

### Services hébergés

* Active Directory Domain Services ;
* DNS intégré ;
* Gestion des stratégies de groupe ;
* Authentification centralisée ;
* Journalisation et audit.

---

## Architecture réseau

| Élément               | Valeur         |
| --------------------- | -------------- |
| Réseau principal      | 192.168.1.0/24 |
| Passerelle            | 192.168.1.1    |
| Contrôleur de domaine | 192.168.1.10   |
| DNS principal         | 192.168.1.10   |

### Poste client

| Élément             | Valeur                   |
| ------------------- | ------------------------ |
| Nom                 | PC-CLI01                 |
| Système             | Windows 11 Professionnel |
| Intégration domaine | Prévue                   |

---

## Architecture Active Directory

L'infrastructure est organisée autour d'unités d'organisation permettant de séparer les responsabilités métiers et de faciliter l'application des stratégies de groupe.

### Organisation des utilisateurs

* Direction
* Ressources Humaines
* Finance
* Bureau d'Études
* Production
* Informatique

### Organisation des ressources

* Groupes de sécurité
* Postes de travail
* Serveurs
* Comptes privilégiés

---

## Objectifs de sécurité

Les mesures de sécurité mises en œuvre dans le cadre du projet comprennent :

* l'application du modèle AGDLP ;
* la séparation des comptes utilisateurs et administrateurs ;
* le déploiement de stratégies de groupe de sécurité ;
* le durcissement des systèmes Windows ;
* l'activation des mécanismes d'audit ;
* l'application de recommandations inspirées des guides ANSSI ;
* la mise en œuvre de remédiations issues des benchmarks CIS ;
* la réduction de la surface d'attaque du système d'information.

---

## Résultats attendus

À l'issue du projet, l'infrastructure devra permettre :

* une administration centralisée des utilisateurs ;
* une gestion simplifiée des droits d'accès ;
* une meilleure traçabilité des actions d'administration ;
* une amélioration du niveau de sécurité global ;
* une conformité accrue aux bonnes pratiques de cybersécurité.
