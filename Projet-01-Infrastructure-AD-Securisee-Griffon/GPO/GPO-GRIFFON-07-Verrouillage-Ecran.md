# GPO-GRIFFON-07-Verrouillage-Ecran

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin d'imposer le verrouillage automatique des sessions utilisateurs après une période d'inactivité.

Cette mesure vise à protéger les postes de travail contre les accès physiques non autorisés lorsque l'utilisateur s'absente temporairement de son bureau.

L'objectif est de garantir la confidentialité des informations affichées à l'écran et de réduire les risques d'utilisation frauduleuse des sessions ouvertes.

---

## Contexte

Au sein d'une entreprise, les utilisateurs peuvent être amenés à quitter leur poste de travail pour participer à une réunion, répondre à un appel ou effectuer un déplacement temporaire.

Si la session reste ouverte sans surveillance, une personne malveillante ou non autorisée pourrait accéder aux ressources de l'entreprise sous l'identité de l'utilisateur connecté.

La mise en œuvre d'un verrouillage automatique constitue une mesure simple mais essentielle pour renforcer la sécurité physique du système d'information.

---

## Paramètres configurés

La stratégie applique :

* Activation de l'écran de veille ;
* Définition d'un délai d'inactivité ;
* Verrouillage automatique de la session ;
* Obligation de saisir le mot de passe lors de la reprise de session ;
* Application automatique sur l'ensemble des postes du domaine.

---

## Risques traités

Cette stratégie permet de réduire :

* Les accès physiques non autorisés ;
* L'usurpation de session ;
* Les consultations non autorisées de données sensibles ;
* Les modifications non autorisées ;
* Les risques liés aux postes laissés sans surveillance.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-07-Verrouillage-Ecran
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
Après la période d'inactivité définie, la session utilisateur doit être automatiquement verrouillée.
```

---

## Bénéfices

* Protection des données affichées à l'écran ;
* Réduction des risques d'usurpation de session ;
* Renforcement de la sécurité physique ;
* Sensibilisation des utilisateurs aux bonnes pratiques ;
* Amélioration de la protection des ressources de l'entreprise.

---

## Application dans le projet Griffon

Cette stratégie participe au durcissement des postes de travail et complète les autres mesures de sécurité mises en œuvre dans l'environnement Active Directory.

Elle contribue à protéger les informations sensibles contre les risques liés aux accès physiques non contrôlés.

---

## Résultat

Les sessions utilisateurs sont automatiquement verrouillées après une période d'inactivité définie, garantissant ainsi une meilleure protection des ressources et des données du domaine GRIFFON.LOCAL.
