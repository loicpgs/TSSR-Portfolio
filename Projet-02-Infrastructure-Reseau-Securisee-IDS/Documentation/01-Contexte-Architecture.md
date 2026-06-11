# Contexte et Architecture

## Objectif

Ce projet a pour objectif la mise en place d'une infrastructure réseau sécurisée sous Debian permettant :

- la communication entre un réseau LAN et Internet ;
- la mise en place d'un NAT ;
- la sécurisation des flux via un firewall ;
- la détection d'intrusion grâce à Suricata ;
- la supervision des événements de sécurité avec Loki et Grafana.

## Architecture

L'infrastructure est composée :

- d'un routeur Debian ;
- d'un réseau WAN ;
- d'un réseau LAN 192.168.50.0/24 ;
- d'un poste client Windows ;
- d'un IDS Suricata ;
- d'une plateforme de supervision Loki/Grafana.

## Plan d'adressage

| Équipement | Adresse IP |
|------------|------------|
| Routeur WAN | 172.16.3.68 |
| Routeur LAN | 192.168.50.1 |
| Client Windows | 192.168.50.10 |