\# Déploiement d'une Infrastructure Réseau Sécurisée avec Détection d'Intrusion et Supervision



\## Contexte



Dans le cadre de la préparation du titre professionnel Technicien Supérieur Systèmes et Réseaux (TSSR), ce projet a pour objectif de mettre en œuvre une infrastructure réseau sécurisée reposant sur un routeur Linux Debian.



L'infrastructure permet :



\* le routage entre un réseau local et Internet ;

\* la mise en œuvre du NAT ;

\* la sécurisation des flux réseau ;

\* la détection d'activités suspectes ;

\* la centralisation et la supervision des événements de sécurité.



\---



\## Objectifs



Les objectifs du projet sont :



\* configurer un routeur Linux ;

\* mettre en œuvre le routage IP ;

\* configurer le NAT ;

\* déployer un firewall ;

\* installer un IDS Suricata ;

\* superviser les événements réseau ;

\* centraliser les journaux de sécurité ;

\* analyser les alertes générées.



\---



\# Architecture du laboratoire



\## Composants



| Équipement     | Fonction                     |

| -------------- | ---------------------------- |

| Routeur Debian | Routage et sécurité          |

| Client Windows | Poste utilisateur            |

| Suricata       | Détection d'intrusion        |

| Loki           | Centralisation des logs      |

| Promtail       | Collecte des journaux        |

| Grafana        | Supervision et visualisation |



\---



\## Schéma logique



```text

Internet

&#x20;   │

&#x20;   ▼

Interface WAN

&#x20;   │

Routeur Debian

&#x20;   │

Interface LAN

&#x20;   │

Client Windows



Suricata

&#x20;   │

eve.json

&#x20;   │

Promtail

&#x20;   │

Loki

&#x20;   │

Grafana

```



\---



\# Configuration du routeur Debian



\## Interfaces réseau



Deux interfaces réseau sont configurées :



\### WAN



\* Accès Internet

\* Adresse obtenue via DHCP



\### LAN



\* Réseau interne

\* Adresse : 192.168.50.1/24



\---



\## Activation du routage



Le routage IPv4 est activé afin de permettre la communication entre les réseaux.



Vérification :



```bash

cat /proc/sys/net/ipv4/ip\_forward

```



Résultat attendu :



```text

1

```



\---



\# Mise en œuvre du NAT



Le NAT permet aux machines du réseau privé d'accéder à Internet.



Vérification :



```bash

sudo iptables -t nat -L

```



Le trafic sortant est traduit via l'adresse WAN du routeur.



\---



\# Configuration du Firewall



Le filtrage réseau est assuré via iptables.



Objectifs :



\* autoriser les flux légitimes ;

\* bloquer les connexions non sollicitées ;

\* limiter la surface d'exposition du système.



Vérification :



```bash

sudo iptables -L

```



\---



\# Configuration du poste client



\## Paramètres réseau



| Paramètre  | Valeur        |

| ---------- | ------------- |

| Adresse IP | 192.168.50.10 |

| Masque     | 255.255.255.0 |

| Passerelle | 192.168.50.1  |

| DNS        | 8.8.8.8       |



\---



\# Validation de la connectivité



\## Test LAN



```bash

ping 192.168.50.1

```



\## Test Internet



```bash

ping 8.8.8.8

```



\## Test DNS



```bash

ping google.com

```



\---



\# Déploiement de Suricata IDS



\## Objectif



Suricata permet de détecter des comportements anormaux ou malveillants sur le réseau.



\---



\## Installation



```bash

sudo apt update

sudo apt install suricata -y

```



\---



\## Configuration



Fichier principal :



```text

/etc/suricata/suricata.yaml

```



Interface surveillée :



```text

eth1

```



\---



\# Règles personnalisées



\## Détection ICMP



```text

alert icmp any any -> any any (msg:"PING DETECTED"; sid:1000001; rev:1;)

```



\## Détection de scan réseau



```text

alert tcp any any -> any any (flags:S; msg:"SYN SCAN DETECTED"; sid:1000002; rev:1;)

```



\---



\# Tests de détection



\## Test ICMP



Depuis le poste client :



```bash

ping 192.168.50.1

```



Résultat :



\* génération d'une alerte ;

\* enregistrement dans fast.log.



\---



\## Test Nmap



```bash

nmap -sS 192.168.50.10

```



Résultat :



\* détection du scan ;

\* génération d'une alerte Suricata.



\---



\# Intégration des règles Emerging Threats



Afin d'améliorer les capacités de détection, les règles communautaires Emerging Threats Open ont été intégrées.



Installation :



```bash

sudo apt install suricata-update -y

sudo suricata-update

```



Ces règles permettent la détection d'un grand nombre d'activités suspectes connues.



\---



\# Supervision des événements de sécurité



\## Architecture



```text

Suricata

&#x20;   │

eve.json

&#x20;   │

Promtail

&#x20;   │

Loki

&#x20;   │

Grafana

```



\---



\## Grafana



Fonctions :



\* visualisation des événements ;

\* tableaux de bord ;

\* suivi des alertes.



\---



\## Loki



Fonctions :



\* stockage centralisé des journaux ;

\* recherche dans les événements.



\---



\## Promtail



Fonctions :



\* collecte automatique des logs ;

\* transmission vers Loki.



\---



\# Résultats obtenus



Le projet a permis :



\* le déploiement d'un routeur Linux fonctionnel ;

\* la mise en œuvre du NAT ;

\* la sécurisation des flux réseau ;

\* la détection d'activités suspectes ;

\* la centralisation des journaux ;

\* la supervision graphique des événements de sécurité.



\---



\# Compétences TSSR mises en œuvre



\## Administration Linux



\* configuration réseau ;

\* gestion des services ;

\* administration système.



\## Réseau



\* routage ;

\* NAT ;

\* firewall ;

\* diagnostic réseau.



\## Cybersécurité



\* IDS ;

\* détection d'intrusion ;

\* analyse d'événements ;

\* investigation réseau.



\## Supervision



\* Grafana ;

\* Loki ;

\* Promtail ;

\* analyse des journaux.



\---



\# Conclusion



Cette infrastructure reproduit les principes de sécurisation et de supervision utilisés dans les environnements professionnels modernes.



La combinaison d'un routeur Linux, d'un IDS Suricata et d'une plateforme de supervision centralisée permet de disposer d'une visibilité complète sur les événements réseau et d'améliorer significativement la capacité de détection des incidents de sécurité.



