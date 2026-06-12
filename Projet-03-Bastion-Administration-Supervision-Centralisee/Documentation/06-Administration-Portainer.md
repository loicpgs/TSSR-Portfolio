# Administration des Conteneurs avec Portainer

## Objectif

Afin de simplifier l'administration des conteneurs Docker, Portainer a été déployé sur le serveur bastion.

Portainer fournit une interface web permettant de gérer l'ensemble des ressources Docker sans avoir recours exclusivement à la ligne de commande.

## Présentation

Portainer permet notamment :

- la gestion des conteneurs ;
- la gestion des images Docker ;
- la gestion des volumes ;
- la gestion des réseaux ;
- le déploiement d'applications ;
- la supervision de l'environnement Docker.

## Déploiement de Portainer

Création du volume de stockage :

```bash
docker volume create portainer_data
```

Déploiement du conteneur :

```bash
docker run -d \
--name portainer \
--restart=always \
-p 9443:9443 \
-p 8000:8000 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
portainer/portainer-ce:latest
```

## Vérification du déploiement

Vérification du conteneur :

```bash
docker ps
```

Résultat attendu :

```text
portainer
```

## Accès à l'interface

Depuis un navigateur :

```text
https://IP_DU_SERVEUR:9443
```

Lors du premier accès, un compte administrateur est créé.

## Gestion de l'environnement Docker

Une fois connecté, Portainer permet de visualiser :

- les conteneurs actifs ;
- les images téléchargées ;
- les volumes ;
- les réseaux Docker.

Les services du projet peuvent ainsi être administrés depuis une interface graphique unique.

## Supervision des conteneurs

Portainer fournit des informations en temps réel sur :

- l'utilisation CPU ;
- la consommation mémoire ;
- l'état des conteneurs ;
- les journaux d'exécution.

## Avantages

L'utilisation de Portainer apporte plusieurs bénéfices :

- simplification de l'administration Docker ;
- visualisation centralisée ;
- déploiement rapide des services ;
- meilleure visibilité sur l'infrastructure.

## Résultat

L'ensemble des conteneurs du bastion peut désormais être administré depuis une interface web unique, améliorant l'efficacité des opérations d'administration.