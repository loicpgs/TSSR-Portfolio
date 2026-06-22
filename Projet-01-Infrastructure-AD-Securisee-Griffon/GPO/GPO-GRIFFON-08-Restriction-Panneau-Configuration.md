# GPO-GRIFFON-08-Restriction-Panneau-Configuration

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin de restreindre l'accès au Panneau de configuration et aux paramètres système Windows sur l'ensemble des postes du domaine GRIFFON.LOCAL.

Cette mesure permet de limiter les modifications non autorisées de la configuration des postes de travail et de garantir une homogénéité des paramètres au sein de l'infrastructure.

L'objectif est de conserver la maîtrise des configurations systèmes tout en réduisant les risques d'erreurs ou de modifications pouvant impacter le fonctionnement du poste ou la sécurité de l'environnement.

---

## Contexte

Dans un environnement professionnel, les utilisateurs ne doivent généralement pas pouvoir modifier certains paramètres sensibles du système d'exploitation.

L'accès libre au Panneau de configuration peut permettre :

* La modification des paramètres réseau ;
* La désactivation de certaines protections ;
* L'installation ou la suppression de composants ;
* La modification de paramètres de sécurité ;
* Des changements de configuration non conformes aux politiques de l'entreprise.

Cette stratégie permet de réduire ces risques en limitant l'accès aux outils d'administration système.

---

## Paramètres configurés

La stratégie applique :

* Blocage du Panneau de configuration ;
* Restriction de l'accès aux paramètres Windows ;
* Limitation des modifications système ;
* Application automatique sur l'ensemble des postes du domaine ;
* Maintien des paramètres imposés par l'administrateur.

---

## Risques traités

Cette stratégie permet de réduire :

* Les erreurs de configuration ;
* Les modifications non autorisées ;
* Les incidents liés aux changements de paramètres ;
* Les écarts de conformité ;
* Les risques liés à une mauvaise manipulation des outils système.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-08-Restriction-Panneau-Configuration
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

Validation fonctionnelle :

```text
Tentative d'ouverture du Panneau de configuration depuis un compte utilisateur standard.
```

Résultat attendu :

```text
L'accès au Panneau de configuration est refusé ou limité selon la politique appliquée.
```

---

## Bénéfices

* Standardisation des configurations ;
* Réduction des erreurs utilisateurs ;
* Diminution des incidents liés aux modifications système ;
* Renforcement de la sécurité des postes ;
* Simplification de l'administration du parc informatique.

---

## Application dans le projet Griffon

Cette stratégie contribue à maintenir un environnement homogène et conforme aux exigences de sécurité définies dans le projet Griffon.

Elle complète les autres mesures de durcissement mises en œuvre sur les postes utilisateurs et participe au maintien en condition opérationnelle de l'infrastructure Active Directory.

---

## Résultat

Les utilisateurs standards ne peuvent plus modifier les paramètres système sensibles via le Panneau de configuration ou les paramètres Windows, garantissant ainsi une meilleure maîtrise des configurations du domaine GRIFFON.LOCAL.
