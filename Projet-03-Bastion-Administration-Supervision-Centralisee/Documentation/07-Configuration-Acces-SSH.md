# Configuration des Accès SSH

## Objectif

L'un des principaux rôles du bastion est de centraliser l'accès aux serveurs Linux via le protocole SSH.

Grâce à Apache Guacamole, les administrateurs peuvent établir des connexions SSH directement depuis un navigateur web sans installer de client spécifique.

## Présentation du protocole SSH

SSH (Secure Shell) est un protocole sécurisé permettant :

- l'administration distante des systèmes Linux ;
- l'exécution de commandes à distance ;
- le transfert sécurisé de données ;
- le chiffrement des communications.

## Création d'une connexion SSH dans Guacamole

Depuis l'interface d'administration :

1. Ouvrir le menu **Settings**
2. Sélectionner **Connections**
3. Cliquer sur **New Connection**

## Paramètres de connexion

### Informations générales

Nom :

```text
Serveur Debian
```

Protocole :

```text
SSH
```

### Paramètres réseau

Adresse IP :

```text
192.168.X.X
```

Port :

```text
22
```

### Authentification

Nom d'utilisateur :

```text
admin
```

Mot de passe :

```text
********
```

ou

Authentification par clé SSH.

## Test de connexion

Une fois la connexion enregistrée :

1. Retourner sur la page d'accueil ;
2. Sélectionner la connexion ;
3. Vérifier l'ouverture de la session SSH.

## Avantages

L'intégration SSH dans Guacamole présente plusieurs avantages :

- accès depuis n'importe quel navigateur ;
- suppression des clients SSH locaux ;
- centralisation des accès ;
- administration simplifiée ;
- meilleure gestion des utilisateurs.

## Sécurité

Les communications SSH sont chiffrées.

L'utilisation d'un bastion permet également :

- de limiter l'exposition directe des serveurs ;
- de centraliser les points d'accès ;
- de renforcer la traçabilité des connexions.

## Résultat

Les serveurs Linux de l'infrastructure sont désormais accessibles via une interface web unique tout en conservant la sécurité offerte par le protocole SSH.