


# Préparation du serveur SRV-AD01

## Présentation

Avant le déploiement de l'infrastructure Active Directory, une phase de préparation du serveur a été réalisée afin de garantir un environnement stable et conforme aux bonnes pratiques Microsoft.

Le serveur **SRV-AD01** constitue le premier contrôleur de domaine du laboratoire Griffon et héberge les services essentiels d'authentification et de résolution de noms.

---

## Objectif

L'objectif de cette étape est de préparer le système d'exploitation Windows Server 2022 avant l'installation des rôles Active Directory Domain Services (AD DS) et DNS.

Cette préparation permet de garantir la cohérence de la configuration réseau et la stabilité future de l'annuaire.

---

## Environnement

| Élément                | Valeur                          |
| ---------------------- | ------------------------------- |
| Nom du serveur         | SRV-AD01                        |
| Système d'exploitation | Windows Server 2022             |
| Rôle futur             | Contrôleur de domaine principal |
| Domaine cible          | griffon.local                   |

---

## Renommage du serveur

Le nom du serveur a été modifié afin de respecter la convention de nommage définie pour le projet.

| Élément       | Valeur                       |
| ------------- | ---------------------------- |
| Nom retenu    | SRV-AD01                     |
| Signification | Serveur Active Directory n°1 |

Cette convention facilite l'identification rapide des rôles au sein de l'infrastructure.

---

## Configuration réseau

Une adresse IP fixe a été attribuée au serveur afin de garantir la disponibilité permanente des services réseau.

| Paramètre             | Valeur        |
| --------------------- | ------------- |
| Adresse IP            | 192.168.1.10  |
| Masque de sous-réseau | 255.255.255.0 |
| Passerelle par défaut | 192.168.1.1   |
| Serveur DNS principal | 192.168.1.10  |

L'utilisation d'une adresse IP statique est indispensable pour les contrôleurs de domaine Active Directory.

---

## Vérifications réalisées

Plusieurs contrôles ont été effectués avant l'installation des rôles.

### Vérification de la configuration IP

Contrôle de :

* l'adresse IP ;
* du masque de sous-réseau ;
* de la passerelle ;
* du serveur DNS.

### Vérification du nom d'hôte

Contrôle du nom du serveur afin de s'assurer de la bonne application de la convention de nommage.

### Vérification de la connectivité réseau

Tests réalisés :

* communication avec la passerelle ;
* accès au réseau local ;
* vérification de la connectivité Internet.

### Vérification DNS

Contrôle du bon fonctionnement du service de résolution de noms avant la promotion du serveur en contrôleur de domaine.

---

## Bonnes pratiques appliquées

Les recommandations suivantes ont été prises en compte :

* utilisation d'une adresse IP fixe ;
* utilisation d'une convention de nommage normalisée ;
* vérification de la connectivité réseau avant installation des rôles ;
* préparation de l'environnement conformément aux recommandations Microsoft.

---

## Résultat obtenu

À l'issue de cette phase de préparation :

* le serveur dispose d'une configuration réseau stable ;
* les paramètres système sont conformes à l'architecture retenue ;
* les prérequis Active Directory sont satisfaits ;
* le serveur est prêt à recevoir les rôles Active Directory Domain Services et DNS.

Cette étape constitue la base du déploiement de l'infrastructure Active Directory sécurisée du projet Griffon.
