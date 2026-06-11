# Installation de Suricata

## Objectif

Mettre en place un IDS (Intrusion Detection System) permettant d'analyser le trafic réseau.

## Installation

```bash
sudo apt update
sudo apt install suricata -y
```

## Configuration de l'interface

Fichier :

```bash
/etc/suricata/suricata.yaml
```

Interface surveillée :

```yaml
af-packet:
  - interface: eth1
```

## Résultat

Suricata surveille désormais le trafic circulant sur le réseau LAN.