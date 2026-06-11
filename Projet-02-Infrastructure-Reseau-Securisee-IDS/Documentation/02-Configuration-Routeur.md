

# Configuration du Routeur Debian

## Vérification des interfaces réseau

La première étape consiste à vérifier les interfaces réseau présentes sur le serveur Debian. Pour cela, la commande suivante est utilisée :
```bash
ip a
```
Cette commande permet d'identifier les interfaces disponibles, leurs adresses IP ainsi que leur état de fonctionnement.

## Configuration IP

La configuration réseau du routeur est définie dans le fichier :
```bash
/etc/network/interfaces
```
Deux interfaces ont été configurées :

* Une interface WAN permettant la connexion au réseau externe et configurée en DHCP.
* Une interface LAN configurée avec l'adresse statique 192.168.50.1/24 afin de servir de passerelle au réseau local.

Cette configuration permet au serveur Debian d'assurer le rôle de routeur entre le réseau local et le réseau externe.

## Résultat

À l'issue de cette configuration, le routeur dispose :

* d'une interface connectée au réseau WAN ;
* d'une interface dédiée au réseau local ;
* d'une configuration réseau permettant la mise en œuvre du routage et des services de sécurité déployés dans la suite du projet.
