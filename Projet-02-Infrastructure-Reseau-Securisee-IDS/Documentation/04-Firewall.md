# Configuration du Firewall

## Objectif

Le firewall permet de protéger le réseau local en contrôlant les flux entrants et sortants.

## Vérification des règles

Commande :

```bash
sudo iptables -L
```

## Politique de sécurité

Les règles appliquées permettent :

- d'autoriser les connexions établies ;
- d'autoriser le trafic nécessaire au fonctionnement du réseau ;
- de bloquer les connexions non autorisées.

## Résultat

Le routeur assure la protection du réseau local tout en conservant les services nécessaires au bon fonctionnement de l'infrastructure.