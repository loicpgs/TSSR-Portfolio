# GPO-GRIFFON-09-Activation-Windows-Defender

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin d'assurer l'activation et la configuration centralisée de Microsoft Defender sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Microsoft Defender constitue la solution antivirus native de Windows. Son rôle est de détecter, bloquer et supprimer les menaces susceptibles de compromettre la sécurité des systèmes et des données de l'entreprise.

L'objectif de cette stratégie est de garantir un niveau de protection homogène sur l'ensemble du parc informatique tout en conservant une administration centralisée des paramètres de sécurité.

---

## Contexte

Les postes utilisateurs représentent une cible privilégiée pour de nombreuses cybermenaces.

Les risques peuvent prendre différentes formes :

* Virus ;
* Chevaux de Troie ;
* Logiciels espions ;
* Ransomwares ;
* Scripts malveillants ;
* Téléchargements infectés.

Sans solution de protection active, un poste compromis peut rapidement devenir un point d'entrée permettant à un attaquant d'accéder à d'autres ressources du domaine.

La mise en œuvre d'une protection antivirus centralisée constitue donc une mesure essentielle pour assurer la sécurité de l'infrastructure Active Directory.

---

## Paramètres configurés

La stratégie applique :

* Activation de Microsoft Defender ;
* Activation de la protection en temps réel ;
* Analyse automatique des fichiers ;
* Surveillance comportementale ;
* Contrôle des programmes exécutés ;
* Mise à jour automatique des signatures antivirus ;
* Protection contre les logiciels malveillants.

---

## Risques traités

Cette stratégie permet de réduire :

* Les infections virales ;
* Les attaques par ransomware ;
* Les téléchargements malveillants ;
* L'exécution de fichiers dangereux ;
* La propagation des menaces au sein du domaine ;
* Les compromissions de postes utilisateurs.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-09-Activation-Windows-Defender
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

Vérification de l'état de Defender :

```powershell
Get-MpComputerStatus
```

Résultat attendu :

```text
AMServiceEnabled : True
AntivirusEnabled : True
RealTimeProtectionEnabled : True
```

Vérification des mises à jour :

```powershell
Update-MpSignature
```

---

## Bénéfices

* Protection continue des postes ;
* Détection automatique des menaces ;
* Administration centralisée ;
* Réduction du risque de compromission ;
* Homogénéité de la configuration antivirus ;
* Amélioration de la sécurité globale du domaine.

---

## Application dans le projet Griffon

Cette stratégie complète les autres mécanismes de sécurité mis en œuvre dans l'infrastructure Active Directory, notamment le pare-feu Windows, la désactivation de SMBv1 et la désactivation de LLMNR.

Elle participe activement à la protection des postes utilisateurs et contribue à la mise en place d'une stratégie de défense en profondeur au sein du domaine GRIFFON.LOCAL.

---

## Résultat

L'ensemble des postes du domaine dispose désormais d'une protection antivirus active, administrée de manière centralisée et conforme aux bonnes pratiques de sécurisation des environnements Microsoft.
