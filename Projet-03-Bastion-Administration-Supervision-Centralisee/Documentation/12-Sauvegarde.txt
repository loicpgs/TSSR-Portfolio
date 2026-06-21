# Configuration des Accès RDP

## Objectif

Le bastion d'administration permet également de centraliser l'accès aux postes et serveurs Windows grâce au protocole RDP (Remote Desktop Protocol).

L'intégration de RDP dans Apache Guacamole permet d'accéder à un environnement Windows directement depuis un navigateur web sans installer de client spécifique.

## Présentation du protocole RDP

RDP est un protocole développé par Microsoft permettant :

- l'accès à distance à un poste Windows ;
- l'administration de serveurs Windows ;
- le support utilisateur ;
- l'utilisation d'applications distantes.

## Préparation du poste Windows

Avant la configuration dans Guacamole, les éléments suivants doivent être vérifiés :

### Activation du Bureau à Distance

Sur la machine Windows :

```text
Paramètres
→ Système
→ Bureau à distance
→ Activer le Bureau à distance
```

### Vérification du pare-feu

Le port RDP doit être autorisé :

```text
3389/TCP
```

### Vérification de la connectivité

Depuis le bastion :

```bash
ping IP_MACHINE_WINDOWS
```

## Création d'une connexion RDP dans Guacamole

Depuis l'interface d'administration :

1. Ouvrir le menu **Settings**
2. Sélectionner **Connections**
3. Cliquer sur **New Connection**

## Paramètres de connexion

### Informations générales

Nom :

```text
Poste Windows
```

Protocole :

```text
RDP
```

### Paramètres réseau

Adresse IP :

```text
192.168.X.X
```

Port :

```text
3389
```

### Authentification

Nom d'utilisateur :

```text
Administrateur
```

Mot de passe :

```text
********
```

Domaine :

```text
WORKGROUP
```

ou

```text
MONDOMAINE.LOCAL
```

## Paramètres complémentaires

Pour améliorer l'expérience utilisateur :

- Activer le mode plein écran ;
- Activer le presse-papiers ;
- Configurer la résolution dynamique ;
- Autoriser le transfert de fichiers si nécessaire.

## Test de connexion

Une fois la connexion enregistrée :

1. Retourner sur la page d'accueil ;
2. Sélectionner la connexion ;
3. Vérifier l'ouverture de la session Windows.

## Avantages

L'utilisation de RDP via Guacamole permet :

- l'accès à distance sans client local ;
- la centralisation des accès Windows ;
- la simplification du support utilisateur ;
- l'administration des serveurs Windows depuis n'importe quel navigateur.

## Sécurité

L'accès RDP est centralisé via le bastion.

Cette architecture permet :
