# GPO-GRIFFON-10-Journalisation-PowerShell

## Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin d'activer la journalisation avancée de PowerShell sur l'ensemble des postes du domaine GRIFFON.LOCAL.

PowerShell est un outil d'administration puissant permettant d'automatiser des tâches, de gérer les systèmes Windows et d'administrer les infrastructures Active Directory.

L'objectif de cette stratégie est d'améliorer la traçabilité des actions réalisées sur les systèmes, de faciliter les audits de sécurité et de permettre l'identification rapide d'activités suspectes ou malveillantes.

---

## Contexte

PowerShell est devenu un composant incontournable des environnements Microsoft modernes.

Les administrateurs l'utilisent quotidiennement pour :

* Automatiser des tâches ;
* Administrer les postes et serveurs ;
* Déployer des configurations ;
* Gérer Active Directory ;
* Réaliser des opérations de maintenance.

Cependant, cet outil est également très utilisé par les cybercriminels lors des différentes phases d'une attaque informatique.

PowerShell peut notamment être utilisé pour :

* Télécharger des scripts malveillants ;
* Exécuter du code à distance ;
* Collecter des informations sur le système ;
* Créer des comptes ;
* Modifier des configurations de sécurité ;
* Maintenir une présence persistante sur un poste compromis.

Sans mécanisme de journalisation, il devient difficile d'identifier précisément les actions réalisées après un incident de sécurité.

La mise en œuvre de cette stratégie permet donc de conserver un historique détaillé des commandes exécutées sur les systèmes du domaine.

---

## Paramètres configurés

La stratégie active plusieurs mécanismes de surveillance :

### Script Block Logging

Ce paramètre permet d'enregistrer le contenu des scripts PowerShell exécutés sur le système.

Les commandes et scripts lancés sont conservés dans les journaux Windows afin de faciliter les investigations.

### Module Logging

Cette fonctionnalité permet d'enregistrer les actions réalisées par les différents modules PowerShell utilisés sur le système.

Elle fournit un niveau de détail supplémentaire sur les opérations exécutées.

### Journalisation des commandes

Les commandes exécutées dans les consoles PowerShell sont enregistrées dans les journaux d'événements.

### Journalisation des événements PowerShell

Les événements liés à l'utilisation de PowerShell sont centralisés dans les journaux Windows afin de permettre leur analyse.

---

## Risques traités

Cette stratégie permet de détecter :

* L'exécution de scripts malveillants ;
* Les tentatives d'élévation de privilèges ;
* Les actions administratives non autorisées ;
* Les téléchargements suspects ;
* Les modifications système non prévues ;
* Les comportements anormaux ;
* Certaines activités réalisées par un attaquant après une compromission.

---

## Mise en œuvre

La stratégie a été créée dans :

```text
Gestion des stratégies de groupe (GPMC)
```

Nom de la stratégie :

```text
GPO-GRIFFON-10-Journalisation-PowerShell
```

La GPO est liée au domaine :

```text
griffon.local
```

afin de garantir son application automatique sur l'ensemble des postes et serveurs concernés.

---

## Vérification

Mise à jour des stratégies :

```powershell
gpupdate /force
```

Contrôle des stratégies appliquées :

```powershell
gpresult /r
```

Consultation des événements PowerShell :

```powershell
Get-WinEvent -LogName "Microsoft-Windows-PowerShell/Operational"
```

Consultation via l'interface graphique :

```text
Observateur d'événements
Applications and Services Logs
Microsoft
Windows
PowerShell
Operational
```

Les événements générés permettent de consulter les scripts exécutés ainsi que certaines commandes administratives réalisées sur le système.

---

## Bénéfices

* Amélioration de la traçabilité ;
* Renforcement des capacités d'audit ;
* Facilitation des investigations ;
* Détection plus rapide des incidents ;
* Identification des comportements suspects ;
* Amélioration de la visibilité sur les actions administratives ;
* Renforcement global de la sécurité du domaine.

---

## Application dans le projet Griffon

Cette stratégie s'inscrit dans la démarche globale de durcissement de l'environnement Active Directory mise en œuvre dans le projet Griffon.

Elle complète les autres mesures de sécurité déployées telles que :

* L'activation du pare-feu Windows ;
* La désactivation de SMBv1 ;
* La désactivation de LLMNR ;
* L'interdiction du stockage des identifiants ;
* L'activation de Windows Defender.

La journalisation PowerShell apporte une capacité supplémentaire de surveillance et d'analyse permettant de détecter plus facilement des activités anormales sur les systèmes du domaine.

---

## Résultat

Les activités PowerShell exécutées sur les postes et serveurs du domaine GRIFFON.LOCAL sont désormais enregistrées dans les journaux Windows.

Cette journalisation améliore considérablement la traçabilité des actions réalisées sur les systèmes et facilite les opérations d'audit, d'investigation et de réponse aux incidents de sécurité.
