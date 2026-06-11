4. Deuxième fichier

02-Configuration-Routeur.md

# Configuration du Routeur Debian

## Vérification des interfaces

Commande :

```bash
ip a

Cette commande permet d'identifier les interfaces réseau disponibles et leur configuration.

Configuration IP

Fichier utilisé :

cat /etc/network/interfaces

Configuration réalisée :

Interface WAN en DHCP
Interface LAN en adresse statique 192.168.50.1/24
Résultat

Le routeur dispose d'une interface connectée au WAN et d'une interface dédiée au réseau local.