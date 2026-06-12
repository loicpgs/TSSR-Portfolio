# Installation et Configuration du Serveur Debian

## Objectif

La première étape du projet consiste à déployer un serveur Debian qui servira de bastion d'administration et hébergera l'ensemble des services nécessaires au fonctionnement de l'infrastructure.

## Installation du système

Le serveur a été installé à partir d'une image Debian Stable.

Les composants suivants ont été sélectionnés :

- Système de base Debian
- Serveur SSH
- Utilitaires système standards

## Mise à jour du système

Après l'installation, le système a été mis à jour afin de bénéficier des derniers correctifs de sécurité.

### Commandes utilisées

```bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
```

## Configuration SSH

Vérification du service :

```bash
systemctl status ssh
```

## Vérification de la connectivité

Test réseau :

```bash
ping 8.8.8.8
```

Test DNS :

```bash
ping google.com
```

## Résultat

Le serveur Debian est désormais opérationnel et prêt à accueillir les différents composants de l'infrastructure.