# GPO-GRIFFON-04-Interdiction-Stockage-Identifiants

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en place afin d'empêcher les utilisateurs de stocker localement leurs identifiants et mots de passe.

Cette mesure vise à protéger les comptes utilisateurs contre les risques liés à la conservation des informations d'authentification sur les postes de travail.

---

## Contexte

Certaines applications Windows proposent de mémoriser automatiquement les informations d'identification afin de simplifier les connexions futures.

Bien que pratique, cette fonctionnalité augmente le risque de compromission en cas d'accès non autorisé au poste.

Un attaquant pourrait récupérer les informations stockées et les utiliser pour accéder aux ressources de l'entreprise.

---

## Paramètres configurés

La stratégie applique :

* Interdiction du stockage des informations d'identification ;
* Désactivation de la mémorisation automatique ;
* Protection des données d'authentification ;
* Limitation des informations conservées localement.

---

## Risques traités

Cette stratégie permet de réduire :

* Le vol d'identifiants ;
* L'usurpation de comptes ;
* Les compromissions de sessions ;
* Les risques liés aux postes partagés.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-04-Interdiction-Stockage-Identifiants
```

La GPO est liée au domaine afin d'assurer une application homogène sur l'ensemble des postes.

---

## Vérification

Mise à jour :

```powershell
gpupdate /force
```

Contrôle :

```powershell
gpresult /r
```

---

## Bénéfices

* Protection des comptes utilisateurs ;
* Réduction des risques de compromission ;
* Renforcement de la sécurité des postes ;
* Application du principe du moindre privilège.

---

## Application dans le projet Griffon

Cette stratégie participe à la sécurisation globale des accès au système d'information et complète les autres mesures de protection mises en œuvre dans l'environnement Active Directory.

---

## Résultat

Les informations d'authentification ne peuvent plus être stockées localement par les utilisateurs du domaine GRIFFON.LOCAL.
