# Mise en œuvre des Stratégies de Groupe (GPO)

## Présentation

Dans le cadre du projet Griffon, plusieurs stratégies de groupe (GPO) ont été déployées afin de standardiser la configuration des postes de travail et de renforcer la sécurité de l'infrastructure Active Directory.

Les GPO permettent d'appliquer automatiquement des paramètres de configuration aux utilisateurs et aux ordinateurs du domaine sans intervention manuelle.

Cette approche garantit une administration centralisée, homogène et conforme aux bonnes pratiques de sécurité.

---

## Objectifs

Les stratégies de groupe ont été mises en œuvre afin de :

* renforcer la sécurité des postes de travail ;
* appliquer des paramètres communs à l'ensemble du domaine ;
* limiter certaines actions utilisateurs ;
* protéger les ressources critiques ;
* simplifier l'administration de l'infrastructure ;
* appliquer les recommandations ANSSI et CIS.

---

## Principe de fonctionnement

Les stratégies de groupe sont créées sur le contrôleur de domaine puis liées aux unités d'organisation concernées.

Contrôleur de domaine

↓

GPO

↓

Unité d'Organisation (OU)

↓

Utilisateurs et ordinateurs

Lors de l'ouverture de session ou du démarrage du poste, les paramètres définis dans les GPO sont automatiquement appliqués.

---

## GPO déployées dans le projet Griffon

### Politique de mot de passe renforcée

Objectif :

Renforcer la sécurité des comptes utilisateurs du domaine.

Paramètres appliqués :

* longueur minimale de 14 caractères ;
* complexité activée ;
* historique des mots de passe ;
* verrouillage du compte après plusieurs tentatives échouées.

Bénéfices :

* réduction des risques de compromission ;
* meilleure résistance aux attaques par force brute.

---

### Configuration du Pare-feu Windows

Objectif :

Protéger les postes clients contre les connexions non autorisées.

Paramètres appliqués :

* activation du pare-feu ;
* filtrage des connexions entrantes ;
* application des profils Domaine, Privé et Public ;
* journalisation des événements.

Bénéfices :

* réduction de la surface d'attaque ;
* contrôle des flux réseau.

---

### Durcissement des comptes administrateurs

Objectif :

Sécuriser les comptes à privilèges élevés.

Paramètres appliqués :

* restrictions d'accès ;
* limitation de certaines actions sensibles ;
* sécurisation des sessions administratives ;
* contrôle renforcé des privilèges.

Bénéfices :

* réduction des risques liés aux comptes administrateurs ;
* meilleure protection des ressources critiques.

---

### Blocage du Planificateur de tâches

Objectif :

Empêcher les utilisateurs standards de créer ou modifier des tâches planifiées.

Paramètres appliqués :

* restriction d'accès au planificateur ;
* limitation des actions d'administration locale.

Bénéfices :

* réduction des risques d'exécution de tâches non autorisées ;
* amélioration de la sécurité des postes.

---

### Paramètres de sécurité ANSSI

Objectif :

Appliquer des recommandations de sécurité inspirées des guides ANSSI.

Paramètres appliqués :

* renforcement de l'authentification ;
* sécurisation des sessions ;
* contrôle des accès ;
* restrictions sur certains composants système.

Bénéfices :

* amélioration du niveau de sécurité global ;
* conformité aux bonnes pratiques professionnelles.

---

### Paramètres CIS Benchmark

Objectif :

Mettre en œuvre des recommandations issues des benchmarks CIS.

Paramètres appliqués :

* désactivation de fonctionnalités inutiles ;
* renforcement des paramètres de sécurité Windows ;
* contrôle des services ;
* sécurisation du système d'exploitation.

Bénéfices :

* réduction des vulnérabilités ;
* amélioration de la résilience des postes.

---

### Protection des pièces jointes téléchargées

Objectif :

Renforcer la sécurité des fichiers provenant d'Internet.

Paramètres appliqués :

* conservation des informations de zone de sécurité ;
* contrôle renforcé des fichiers téléchargés ;
* meilleure traçabilité des contenus externes.

Bénéfices :

* limitation des risques liés aux téléchargements malveillants ;
* amélioration de la sécurité utilisateur.

---

## Vérification de l'application des GPO

Plusieurs outils ont été utilisés pour contrôler le bon déploiement des stratégies.

Outils utilisés :

* Gestion des Stratégies de Groupe (GPMC) ;
* gpupdate ;
* gpresult ;
* rsop.msc ;
* Observateur d'événements.

Exemple de mise à jour des stratégies :

```bash
gpupdate /force
```

Exemple de génération d'un rapport :

```bash
gpresult /r
```

Ces vérifications permettent de confirmer la bonne application des paramètres de sécurité sur les postes du domaine.

---

## Avantages de l'utilisation des GPO

L'utilisation des stratégies de groupe présente plusieurs bénéfices :

* administration centralisée ;
* configuration homogène des postes ;
* gain de temps pour les administrateurs ;
* amélioration de la sécurité ;
* réduction des erreurs de configuration ;
* application automatique des politiques de l'entreprise ;
* conformité avec les bonnes pratiques Microsoft.

---

## Application dans le projet Griffon

L'ensemble des postes intégrés au domaine GRIFFON.LOCAL reçoit automatiquement les paramètres définis dans les stratégies de groupe.

Les GPO constituent un élément central de la sécurisation de l'infrastructure et participent au maintien en condition opérationnelle et de sécurité du système d'information.

Cette approche permet de garantir une administration cohérente, évolutive et conforme aux exigences professionnelles d'un environnement Active Directory.
