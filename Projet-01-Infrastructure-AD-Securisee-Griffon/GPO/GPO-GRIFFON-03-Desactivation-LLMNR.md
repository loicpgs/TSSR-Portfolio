# GPO-GRIFFON-03-Desactivation-LLMNR

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été déployée afin de désactiver le protocole LLMNR (Link Local Multicast Name Resolution) sur l'ensemble des postes du domaine Active Directory.

LLMNR est un mécanisme de résolution de noms utilisé lorsque le DNS ne parvient pas à répondre à une requête.

L'objectif de cette stratégie est de renforcer la sécurité des communications réseau et de limiter les risques d'interception d'identifiants.

---

## Contexte

Par défaut, Windows peut utiliser LLMNR lorsqu'une résolution DNS échoue.

Cette fonctionnalité peut être détournée par un attaquant présent sur le réseau afin de répondre frauduleusement aux requêtes et récupérer des informations d'authentification.

Des outils tels que Responder ou Inveigh exploitent fréquemment ce mécanisme.

---

## Paramètres configurés

La stratégie applique :

* Désactivation de LLMNR ;
* Désactivation des requêtes multicast ;
* Utilisation exclusive du DNS ;
* Blocage des résolutions de noms non sécurisées.

---

## Risques traités

Cette stratégie réduit :

* Les attaques de type spoofing ;
* Les interceptions d'identifiants NTLM ;
* Les attaques Man-in-the-Middle ;
* Les mouvements latéraux sur le réseau.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-03-Desactivation-LLMNR
```

La GPO est liée au domaine afin de garantir son application sur l'ensemble des postes.

---

## Vérification

Mise à jour des stratégies :

```powershell
gpupdate /force
```

Contrôle :

```powershell
gpresult /r
```

---

## Bénéfices

* Protection des identifiants utilisateurs ;
* Réduction de la surface d'attaque ;
* Renforcement de la sécurité réseau ;
* Conformité avec les recommandations ANSSI et CIS.

---

## Application dans le projet Griffon

Cette stratégie complète les mesures de sécurisation réseau déployées dans le domaine et participe à la protection des comptes utilisateurs.

---

## Résultat

Les postes du domaine utilisent désormais exclusivement le DNS comme mécanisme de résolution de noms.
