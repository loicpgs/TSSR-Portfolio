# GPO-GRIFFON-02-Desactivation-SMBv1

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été déployée afin de désactiver le protocole SMBv1 sur l'ensemble des postes et serveurs du domaine.

SMBv1 est une ancienne version du protocole de partage de fichiers Microsoft aujourd'hui considérée comme obsolète et vulnérable.

L'objectif de cette stratégie est de réduire la surface d'attaque de l'infrastructure en supprimant un protocole présentant de nombreuses faiblesses de sécurité.

---

## Contexte

Plusieurs attaques majeures telles que WannaCry ou NotPetya ont exploité des vulnérabilités liées à SMBv1 afin de compromettre des milliers de systèmes à travers le monde.

Microsoft recommande désormais l'utilisation exclusive des versions récentes SMBv2 et SMBv3.

Cette stratégie permet donc d'appliquer automatiquement cette recommandation sur l'ensemble du domaine.

---

## Paramètres configurés

La stratégie applique :

* Désactivation du protocole SMBv1 ;
* Désactivation du pilote SMBv1 ;
* Utilisation des versions SMBv2 et SMBv3 ;
* Application automatique sur les postes concernés.

---

## Risques traités

Cette stratégie réduit :

* Les attaques exploitant SMBv1 ;
* Les ransomwares ;
* Les vulnérabilités liées aux protocoles obsolètes ;
* Les mouvements latéraux dans le réseau.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-02-Desactivation-SMBv1
```

La GPO est liée au domaine afin d'assurer son application automatique.

---

## Vérification

Mise à jour des stratégies :

```powershell
gpupdate /force
```

Contrôle de la configuration SMB :

```powershell
Get-SmbServerConfiguration | Select EnableSMB1Protocol
```

Résultat attendu :

```text
EnableSMB1Protocol : False
```

---

## Bénéfices

* Réduction des vulnérabilités ;
* Conformité avec les recommandations Microsoft ;
* Renforcement de la sécurité réseau ;
* Protection contre certaines familles de ransomwares.

---

## Application dans le projet Griffon

Cette stratégie participe au durcissement global de l'infrastructure Active Directory en supprimant les composants hérités non indispensables.

---

## Résultat

L'ensemble des postes et serveurs du domaine utilise exclusivement les versions modernes du protocole SMB.
