# GPO-GRIFFON-01-Activation-PareFeu

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en place afin d'activer et de configurer automatiquement le Pare-feu Windows sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Le pare-feu constitue l'une des premières lignes de défense d'un système d'information. Il permet de contrôler les communications réseau entrantes et sortantes afin de limiter les risques d'accès non autorisés aux équipements du domaine.

L'objectif de cette stratégie est de garantir que tous les postes bénéficient d'un niveau de protection homogène et conforme aux bonnes pratiques de sécurité.

---

## Contexte

Les postes utilisateurs communiquent quotidiennement avec de nombreux équipements du réseau :

* Contrôleurs de domaine ;
* Serveurs de fichiers ;
* Serveurs applicatifs ;
* Postes utilisateurs ;
* Services Internet.

Sans mécanisme de filtrage, ces communications peuvent être exploitées pour réaliser des scans réseau, des tentatives d'intrusion ou des mouvements latéraux.

Cette stratégie permet de centraliser la configuration du pare-feu et d'assurer son activation permanente sur les postes du domaine.

---

## Paramètres configurés

La stratégie applique :

* Activation du pare-feu Windows Defender ;
* Activation du profil Domaine ;
* Activation du profil Privé ;
* Activation du profil Public ;
* Blocage des connexions entrantes non autorisées ;
* Journalisation des événements liés au pare-feu.

---

## Risques traités

Cette stratégie permet de réduire :

* Les accès non autorisés ;
* Les scans de ports ;
* Les tentatives d'intrusion ;
* La propagation de logiciels malveillants ;
* Les mouvements latéraux au sein du réseau.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-01-Activation-PareFeu
```

La GPO est liée au domaine :

```text
griffon.local
```

afin d'assurer son application sur l'ensemble des postes concernés.

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

Vérification de l'état du pare-feu :

```powershell
Get-NetFirewallProfile
```

Résultat attendu :

```text
Domain  : True
Private : True
Public  : True
```

---

## Bénéfices

* Protection homogène des postes ;
* Réduction de la surface d'attaque ;
* Contrôle des communications réseau ;
* Administration centralisée ;
* Renforcement de la sécurité globale du domaine.

---

## Application dans le projet Griffon

Cette stratégie constitue l'une des premières mesures de sécurisation mises en œuvre dans l'infrastructure Active Directory.

Elle complète les autres stratégies de sécurité telles que la désactivation de SMBv1, la désactivation de LLMNR ou encore l'activation de Windows Defender.

---

## Résultat

Le pare-feu Windows est activé et administré automatiquement sur l'ensemble des postes du domaine GRIFFON.LOCAL.
