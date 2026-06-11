# Routage et NAT

## Activation du routage

Afin que le serveur Debian puisse assurer le rôle de routeur entre le réseau local et le réseau externe, le routage IPv4 doit être activé.

La vérification est réalisée à l'aide de la commande suivante :
```bash
cat /proc/sys/net/ipv4/ip_forward
```
Lorsque la valeur retournée est égale à **1**, cela confirme que le transfert de paquets entre les différentes interfaces réseau est autorisé.

Cette configuration permet au serveur de faire circuler le trafic entre le réseau local (LAN) et le réseau externe (WAN).

## Configuration du NAT

La translation d'adresses réseau (NAT) est mise en œuvre à l'aide d'iptables.

La commande suivante permet de vérifier les règles NAT configurées sur le routeur :
```bash
sudo iptables -t nat -L
```
Le NAT permet de remplacer les adresses IP privées du réseau local par l'adresse IP de l'interface WAN lors des communications vers Internet.

Ce mécanisme présente plusieurs avantages :

* Accès à Internet pour l'ensemble des postes du réseau local ;
* Masquage des adresses IP privées ;
* Réduction de l'exposition directe des équipements internes.

## Résultat

Après l'activation du routage et la mise en place du NAT, les équipements du réseau local peuvent accéder aux ressources externes tout en restant protégés derrière l'adresse IP du routeur.

Cette configuration constitue une étape essentielle dans la sécurisation et le fonctionnement de l'infrastructure réseau.
