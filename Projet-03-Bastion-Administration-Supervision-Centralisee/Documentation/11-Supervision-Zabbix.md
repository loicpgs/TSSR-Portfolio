# Supervision du Bastion avec Zabbix

## Objectif

L'objectif est de superviser en temps réel le serveur bastion afin de surveiller ses performances, sa disponibilité et son état général.

La supervision permet d'anticiper les incidents et d'assurer la continuité des services hébergés.

## Ajout du serveur dans Zabbix

Après l'installation de la plateforme, un hôte représentant le bastion a été créé.

Configuration :

```text
Host name : srvbast
Host group : Bastion
Agent interface : 172.20.0.5
Port : 10050
```

## Configuration de l'agent

Le conteneur Zabbix Agent a été déployé afin de remonter les informations système du serveur Debian.

Vérification du conteneur :

```bash
docker ps | grep zabbix-agent
```

Consultation des journaux :

```bash
docker logs zabbix-agent
```

## Template utilisé

Le template suivant a été associé à l'hôte :

```text
Linux by Zabbix agent
```

Ce template fournit automatiquement plusieurs dizaines d'indicateurs système.

## Métriques supervisées

Les éléments suivants sont collectés :

- Utilisation CPU
- Charge système
- Mémoire disponible
- Espace disque
- Swap
- Temps de fonctionnement
- Interfaces réseau
- État de l'agent

## Vérification de la collecte

Les données sont consultables depuis :

```text
Monitoring → Latest data
```

Exemples de métriques :

- CPU utilization
- Available memory
- Load average
- Free swap space
- Filesystems

## Supervision graphique

Zabbix génère automatiquement plusieurs graphiques :

- Utilisation CPU
- Consommation mémoire
- Activité disque
- Charge système

Ces graphiques permettent de suivre l'évolution des performances du bastion dans le temps.

## Vérification de la disponibilité

Depuis :

```text
Monitoring → Hosts
```

Le statut de l'agent apparaît :

```text
ZBX : Available
```

Cette information confirme la communication entre le serveur Zabbix et l'agent.

## Apports de la supervision

La mise en place de Zabbix permet :

- La surveillance continue du serveur ;
- La détection rapide des anomalies ;
- L'analyse des performances ;
- L'amélioration de la disponibilité des services ;
- La centralisation des informations de supervision.

## Résultat

Le bastion d'administration dispose désormais d'une supervision centralisée permettant de suivre en temps réel l'état du système et des services hébergés.