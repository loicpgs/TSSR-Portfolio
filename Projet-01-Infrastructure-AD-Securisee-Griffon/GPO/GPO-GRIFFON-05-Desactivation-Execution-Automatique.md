
# GPO-GRIFFON-05-Desactivation-Execution-Automatique

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin de désactiver les fonctionnalités AutoRun et AutoPlay sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Ces mécanismes permettent normalement à Windows d'exécuter automatiquement certaines actions lorsqu'un support amovible est connecté à l'ordinateur.

L'objectif de cette stratégie est de limiter les risques liés à l'exécution automatique de programmes potentiellement malveillants et de renforcer la sécurité des postes utilisateurs.

---

## Contexte

Les périphériques amovibles tels que les clés USB, les disques durs externes ou certains supports optiques constituent un vecteur d'attaque fréquemment utilisé pour diffuser des logiciels malveillants.

Historiquement, de nombreux malwares exploitaient les fonctionnalités AutoRun et AutoPlay afin d'exécuter automatiquement du code malveillant dès l'insertion du périphérique dans le poste.

La désactivation de ces mécanismes permet de réduire significativement ce risque en obligeant l'utilisateur à lancer manuellement les programmes présents sur le support.

---

## Paramètres configurés

La stratégie applique :

* Désactivation de la fonctionnalité AutoRun ;
* Désactivation de la fonctionnalité AutoPlay ;
* Blocage de l'exécution automatique sur tous les lecteurs ;
* Application de la configuration à l'ensemble des postes du domaine.

---

## Risques traités

Cette stratégie permet de réduire :

* Les infections via clés USB ;
* L'exécution automatique de logiciels malveillants ;
* La propagation de virus entre postes ;
* Les risques liés aux périphériques amovibles ;
* Les compromissions accidentelles des postes utilisateurs.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-05-Desactivation-Execution-Automatique
```

La GPO est liée au domaine :

```text
griffon.local
```

afin d'assurer son application automatique sur l'ensemble des postes concernés.

---

## Vérification

Mise à jour des stratégies :

```powershell
gpupdate /force
```

Contrôle des GPO appliquées :

```powershell
gpresult /r
```

Test de validation :

```text
Insertion d'une clé USB contenant un fichier exécutable.
Aucune exécution automatique ne doit être observée.
```

---

## Bénéfices

* Réduction du risque d'infection ;
* Contrôle renforcé des périphériques amovibles ;
* Protection des postes utilisateurs ;
* Application homogène des règles de sécurité ;
* Réduction de la surface d'attaque.

---

## Application dans le projet Griffon

Cette stratégie complète les autres mesures de durcissement mises en œuvre dans l'infrastructure Active Directory.

Elle participe à la sécurisation des postes utilisateurs en limitant les risques liés aux supports amovibles et en appliquant les recommandations de sécurité couramment utilisées dans les environnements professionnels.

---

## Résultat

Les fonctionnalités AutoRun et AutoPlay sont désactivées sur l'ensemble des postes du domaine GRIFFON.LOCAL, empêchant ainsi l'exécution automatique de programmes provenant de supports amovibles.
