

# Configuration de la machine virtuelle SRV-AD01

## Présentation

Le serveur **SRV-AD01** est déployé sous forme de machine virtuelle au sein d'un environnement de laboratoire reposant sur Microsoft Hyper-V.

Cette machine constitue le premier contrôleur de domaine du projet Griffon et héberge les services fondamentaux de l'infrastructure Active Directory.

---

## Plateforme de virtualisation

| Élément             | Valeur                                                 |
| ------------------- | ------------------------------------------------------ |
| Hyperviseur         | Microsoft Hyper-V                                      |
| Type de déploiement | Machine virtuelle                                      |
| Usage               | Laboratoire de validation et d'administration systèmes |

L'utilisation de la virtualisation permet de reproduire un environnement d'entreprise tout en limitant les besoins matériels.

---

## Configuration du serveur

| Élément                | Valeur                          |
| ---------------------- | ------------------------------- |
| Nom de la machine      | SRV-AD01                        |
| Système d'exploitation | Windows Server 2022 Standard    |
| Architecture           | 64 bits                         |
| Type                   | Contrôleur de domaine principal |

### Rôle principal

Le serveur assure les fonctions suivantes :

* contrôleur de domaine Active Directory ;
* serveur DNS intégré ;
* gestion des stratégies de groupe ;
* authentification centralisée ;
* gestion des comptes utilisateurs et groupes de sécurité.

---

## Ressources matérielles allouées

| Ressource            | Valeur          |
| -------------------- | --------------- |
| Mémoire vive         | 4 Go            |
| Processeurs virtuels | 2 vCPU          |
| Stockage             | 60 Go           |
| Contrôleur de disque | Virtuel Hyper-V |

### Justification

Cette configuration est suffisante pour :

* héberger Active Directory Domain Services ;
* assurer les services DNS ;
* gérer plusieurs dizaines d'objets Active Directory ;
* exécuter les tâches d'administration et de sécurité du laboratoire.

---

## Configuration réseau

Le serveur est connecté à un commutateur virtuel Hyper-V afin de communiquer avec les autres machines du laboratoire.

| Paramètre           | Valeur                  |
| ------------------- | ----------------------- |
| Type de réseau      | Ethernet                |
| Commutateur virtuel | Hyper-V External Switch |
| Adresse IP          | 192.168.1.10            |
| Masque              | 255.255.255.0           |
| Passerelle          | 192.168.1.1             |
| DNS principal       | 192.168.1.10            |

### Objectif

Cette configuration permet :

* l'intégration future des postes clients au domaine ;
* la résolution de noms via le service DNS ;
* la gestion centralisée de l'infrastructure Active Directory.

---

## Architecture cible

```text
Internet
    │
    ▼
Box / Routeur
192.168.1.1
    │
    ▼
Switch Virtuel Hyper-V
    │
 ┌──┴─────────────┐
 │                │
 ▼                ▼
SRV-AD01       PC-CLI01
192.168.1.10   Client domaine
```

---

## Résultat obtenu

La machine virtuelle **SRV-AD01** dispose des ressources nécessaires au déploiement du domaine **griffon.local**.

Elle constitue la pierre angulaire de l'infrastructure du laboratoire Griffon et servira de support à l'ensemble des opérations d'administration, de sécurisation et de gestion des accès présentées dans ce projet.
