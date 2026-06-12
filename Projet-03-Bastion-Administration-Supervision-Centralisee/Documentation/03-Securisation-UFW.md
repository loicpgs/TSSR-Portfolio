# Sécurisation du Serveur avec UFW

## Objectif

Avant le déploiement des services du bastion, il est nécessaire de sécuriser le serveur Debian afin de limiter les accès non autorisés.

Pour cela, le pare-feu UFW (Uncomplicated Firewall) est utilisé afin de contrôler les flux réseau entrants et sortants.

## Installation

Installation du paquet UFW :

```bash
sudo apt install ufw -y
```

Vérification de la version installée :

```bash
ufw version
```

## Configuration de la politique par défaut

Refus de toutes les connexions entrantes :

```bash
sudo ufw default deny incoming
```

Autorisation des connexions sortantes :

```bash
sudo ufw default allow outgoing
```

## Autorisation des services nécessaires

### SSH

```bash
sudo ufw allow 22/tcp
```

### Guacamole

```bash
sudo ufw allow 8080/tcp
```

### Portainer

```bash
sudo ufw allow 9443/tcp
```

### Grafana

```bash
sudo ufw allow 3000/tcp
```

### Prometheus

```bash
sudo ufw allow 9090/tcp
```

## Activation du pare-feu

```bash
sudo ufw enable
```

## Vérification de la configuration

Affichage des règles actives :

```bash
sudo ufw status verbose
```

Résultat attendu :

```text
22/tcp      ALLOW
3000/tcp    ALLOW
8080/tcp    ALLOW
9090/tcp    ALLOW
9443/tcp    ALLOW
```

## Validation

Les tests suivants ont été réalisés :

- Connexion SSH au serveur ;
- Accès à Guacamole ;
- Accès à Portainer ;
- Accès à Grafana ;
- Accès à Prometheus.

L'ensemble des services reste accessible tout en limitant l'exposition du serveur.

## Résultat

Le serveur Debian est désormais protégé par un pare-feu filtrant les connexions entrantes et n'autorisant que les services nécessaires au fonctionnement du bastion d'administration.