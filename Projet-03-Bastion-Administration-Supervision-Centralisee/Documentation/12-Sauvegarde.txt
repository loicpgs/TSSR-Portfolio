# Sauvegarde Automatisée du Bastion

## Objectif

L'objectif est de mettre en place une solution de sauvegarde automatisée afin de protéger les données critiques du bastion d'administration.

La sauvegarde permet de faciliter la restauration des services en cas d'incident et d'améliorer la continuité de service.

## Principe de fonctionnement

Un script Bash exécute automatiquement les opérations de sauvegarde à intervalles réguliers.

Les données sont regroupées dans une archive compressée puis stockées dans un répertoire dédié.

## Éléments sauvegardés

La sauvegarde inclut :

* Les fichiers Docker Compose ;
* Les scripts d'administration ;
* Les configurations du bastion ;
* La base de données MariaDB ;
* Les informations relatives aux conteneurs Docker.

## Sauvegarde de la base de données

La base de données MariaDB utilisée par les services du bastion est exportée automatiquement.

Outil utilisé :

```text
mysqldump
```

Cette opération permet de conserver les données nécessaires à une restauration ultérieure.

## Planification des sauvegardes

L'automatisation est assurée par Cron.

Configuration :

```text
0 2 * * * /home/loic/Scripts/backup-bastion.sh
```

Cette tâche exécute une sauvegarde chaque jour à 02h00.

## Vérification des sauvegardes

Les archives sont stockées dans le répertoire :

```text
/srv/backups/bastion
```

Les opérations réalisées sont enregistrées dans un fichier journal.

Consultation du journal :

```bash
cat /srv/backups/bastion/backup.log
```

## Procédure de restauration

Une archive peut être extraite afin de récupérer les données sauvegardées.

Extraction :

```bash
tar -xzf backup-bastion-AAAA-MM-JJ.tar.gz
```

Restauration d'une base MariaDB :

```bash
mysql -u utilisateur -p base_de_donnees < sauvegarde.sql
```

## Apports de la sauvegarde

La mise en place de cette solution permet :

* La protection des données critiques ;
* L'automatisation des sauvegardes ;
* La réduction du risque de perte de données ;
* La simplification des opérations de restauration ;
* L'amélioration de la continuité de service.

## Résultat

Le bastion d'administration dispose désormais d'un système de sauvegarde automatisé permettant de protéger les configurations et les données essentielles au fonctionnement de l'infrastructure.
