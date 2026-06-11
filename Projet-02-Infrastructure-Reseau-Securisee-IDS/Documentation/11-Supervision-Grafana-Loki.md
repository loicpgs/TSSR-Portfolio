# Supervision avec Loki et Grafana

## Objectif

Centraliser et visualiser les événements de sécurité générés par Suricata.

## Architecture

```text
Suricata → eve.json → Promtail → Loki → Grafana
```

## Grafana

Installation :

```bash
sudo apt install grafana -y
```

Accès :

```text
http://172.16.3.68:3000
```

## Loki

Rôle :

- stockage des logs ;
- indexation ;
- interrogation des événements.

## Promtail

Rôle :

- collecte des logs Suricata ;
- transfert vers Loki.

## Visualisation

Requête de base :

```logql
{job="suricata"}
```

Filtrage des alertes :

```logql
{job="suricata"} |= "alert"
```

## Dashboard

Création :

- panneau Logs ;
- panneau Volume d'alertes ;
- supervision temps réel.