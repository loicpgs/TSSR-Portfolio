#  Projet 02 – Infrastructure Réseau Sécurisée avec IDS et Supervision

## Présentation

Dans le cadre de ma formation **Technicien Supérieur Systèmes et Réseaux (TSSR)**, j'ai conçu et déployé une infrastructure réseau sécurisée sous **Debian Linux** intégrant :

* Routage IP
* NAT (Network Address Translation)
* Pare-feu iptables
* IDS Suricata
* Règles de détection personnalisées
* Règles Emerging Threats
* Centralisation des logs avec Loki
* Supervision graphique avec Grafana

L'objectif était de reproduire une architecture proche d'un environnement professionnel de cybersécurité permettant de détecter et superviser des événements réseau en temps réel.

---

## Architecture du Projet

```text
Internet
    │
    ▼
Routeur Debian
(NAT + Firewall)
    │
    ▼
Réseau LAN 192.168.50.0/24
    │
    ├── Client Windows
    └── Suricata IDS
             │
             ▼
          eve.json
             │
             ▼
          Promtail
             │
             ▼
            Loki
             │
             ▼
          Grafana
```

### Schéma réseau

![Architecture](Capture/01-Architecture-Reseau-Securisee.png)

---

## Technologies Utilisées

| Technologie      | Fonction                        |
| ---------------- | ------------------------------- |
| Debian           | Routeur Linux                   |
| iptables         | NAT et pare-feu                 |
| Suricata         | Détection d'intrusion           |
| Emerging Threats | Règles IDS avancées             |
| Promtail         | Collecte des logs               |
| Loki             | Centralisation des logs         |
| Grafana          | Supervision et tableaux de bord |

---

## Fonctionnalités Mises en Œuvre

### Routage et NAT

* Activation du routage IPv4
* Translation d'adresses (NAT)
* Accès Internet depuis le réseau privé

### Sécurisation Réseau

* Filtrage des flux avec iptables
* Politique restrictive des connexions entrantes
* Protection du réseau local

### Détection d'Intrusion

Suricata a été configuré pour surveiller le trafic du réseau LAN et détecter :

* Requêtes ICMP
* Scans réseau SYN
* Activités suspectes
* Événements détectés par les règles Emerging Threats

### Centralisation des Logs

Les journaux de Suricata sont exportés via :

```text
Suricata → eve.json → Promtail → Loki → Grafana
```

### Supervision

Grafana permet :

* La visualisation des alertes en temps réel
* Le suivi des événements de sécurité
* La création de dashboards personnalisés
* Le suivi du volume d'alertes

---

## Tests Réalisés

### Validation Réseau

* Communication LAN
* Accès Internet
* Résolution DNS

### Détection ICMP

```bash
ping 192.168.50.1
```

Résultat :

* Alerte générée dans Suricata
* Journalisation dans fast.log

### Détection de Scan Réseau

```bash
nmap -sS 192.168.50.10
```

Résultat :

* Détection automatique du scan
* Génération d'une alerte IDS

### Détection Avancée

```bash
nmap -A 192.168.50.10
```

Résultat :

* Détection par les règles Emerging Threats
* Génération d'événements supplémentaires dans les logs

---

## Captures du Projet

### Configuration du routeur

![02 - Configuration IP](Captures/02-Configuration IP.png)

### Mise en place du NAT

![04 - Mise en place du NAT](Captures/04-Mise en place du NAT.png)

### Configuration du Firewall

![05 - Configuration du Firewall](Captures/05-Configuration du Firewall.png)

### Détection Suricata

![23 - Observation des alertes](Captures/23-Observation des alertes (ET SCAN).jpg)

![24 - Observation des alertes DNS](Captures/24-Observation des alertes (Requête DNS).jpg)

### Dashboard Grafana

![27 - Loki Grafana](Captures/27-Visualisation Loki-Grafana.jpg)

![28 - Volume d'alertes](Captures/28-Volumes d'alertes.jpg)

---

## Compétences Démontrées

* Administration Linux Debian
* Réseau TCP/IP
* Routage IP
* NAT
* Firewall iptables
* Sécurité réseau
* IDS Suricata
* Analyse de logs
* Centralisation des événements
* Loki
* Grafana
* Supervision
* Diagnostic réseau

---

## Résultats

 Routage opérationnel

 NAT fonctionnel

 Pare-feu configuré

 Détection des scans réseau

 Détection des requêtes ICMP

 Intégration des règles Emerging Threats

 Centralisation des logs

 Dashboard Grafana fonctionnel

 Supervision temps réel

---

## Conclusion

Ce projet m'a permis de mettre en œuvre une infrastructure réseau complète intégrant routage, sécurité, détection d'intrusion et supervision.

L'intégration de Suricata, Loki et Grafana permet de se rapprocher d'un environnement SOC (Security Operations Center) et démontre des compétences directement exploitables sur des postes de Technicien Systèmes et Réseaux ou d'Administrateur Systèmes junior.
