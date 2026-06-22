# GPO-GRIFFON-06-Desactivation-Compte-Invite

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin de désactiver le compte Invité intégré de Windows sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Le compte Invité est un compte générique présent par défaut sur les systèmes Windows. Son utilisation ne permet pas d'identifier précisément l'utilisateur connecté et présente donc plusieurs risques de sécurité.

L'objectif de cette stratégie est d'améliorer la traçabilité des connexions et de garantir que chaque utilisateur dispose d'un compte nominatif associé à des droits clairement définis.

---

## Contexte

Dans un environnement professionnel, il est essentiel de pouvoir identifier précisément les utilisateurs qui accèdent aux ressources du système d'information.

L'utilisation d'un compte générique tel que le compte Invité complique :

* La traçabilité des actions ;
* L'attribution des responsabilités ;
* La gestion des autorisations ;
* Les opérations d'audit et d'investigation.

La désactivation de ce compte constitue une recommandation de sécurité fréquemment appliquée dans les infrastructures Active Directory.

---

## Paramètres configurés

La stratégie applique :

* Désactivation du compte Invité ;
* Interdiction d'ouverture de session ;
* Application automatique sur l'ensemble des postes du domaine ;
* Maintien de la configuration lors des mises à jour de stratégies.

---

## Risques traités

Cette stratégie permet de réduire :

* Les accès anonymes ;
* Les connexions non tracées ;
* Les utilisations abusives des postes ;
* Les risques d'escalade de privilèges ;
* Les difficultés d'identification lors d'un incident.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-06-Desactivation-Compte-Invite
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

Vérification du compte Invité :

```powershell
Get-LocalUser -Name "Invité"
```

Résultat attendu :

```text
Enabled : False
```

---

## Bénéfices

* Amélioration de la traçabilité ;
* Renforcement de la gestion des identités ;
* Réduction des accès non contrôlés ;
* Respect des bonnes pratiques Microsoft ;
* Renforcement de la sécurité globale du domaine.

---

## Application dans le projet Griffon

Cette stratégie participe à la sécurisation de l'environnement Active Directory en garantissant que seuls des comptes utilisateurs identifiés et autorisés peuvent accéder aux systèmes.

Elle complète les autres mesures de durcissement mises en œuvre dans le projet Griffon.

---

## Résultat

Le compte Invité est désactivé sur l'ensemble des postes du domaine GRIFFON.LOCAL, garantissant ainsi une meilleure traçabilité des connexions et des actions réalisées sur les systèmes.
