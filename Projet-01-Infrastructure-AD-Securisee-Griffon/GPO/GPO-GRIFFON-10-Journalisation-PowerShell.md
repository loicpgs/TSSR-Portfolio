GPO-GRIFFON-10-Journalisation-PowerShell
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin d'activer la journalisation avancée de PowerShell sur l'ensemble des postes du domaine.

PowerShell est un outil d'administration extrêmement puissant permettant d'automatiser de nombreuses tâches système et réseau. Il est largement utilisé par les administrateurs mais également par les attaquants lors de phases de compromission ou de post-exploitation.

L'objectif de cette stratégie est d'améliorer la traçabilité des actions réalisées sur les systèmes et de faciliter la détection d'activités suspectes.

Contexte

Les attaques modernes exploitent fréquemment PowerShell afin de :

télécharger des scripts malveillants ;
exécuter des commandes à distance ;
contourner certaines protections ;
collecter des informations sur le système ;
maintenir un accès persistant.

Sans mécanisme de journalisation, ces actions peuvent être difficiles à identifier après un incident de sécurité.

La mise en œuvre de cette GPO permet de conserver des traces détaillées des commandes exécutées et des scripts lancés sur les postes du domaine.

Paramètres configurés

La stratégie active plusieurs mécanismes de journalisation :

Script Block Logging

Enregistre le contenu des blocs de scripts exécutés par PowerShell.

Module Logging

Enregistre les commandes exécutées par les différents modules PowerShell.

Journalisation des événements PowerShell

Conserve les événements liés à l'utilisation de PowerShell dans les journaux Windows.

Traçabilité des actions administratives

Permet de suivre les opérations réalisées sur les systèmes du domaine.

Risques traités

Cette stratégie permet de détecter :

l'exécution de scripts malveillants ;
les actions non autorisées ;
les tentatives d'élévation de privilèges ;
les comportements anormaux ;
certaines activités liées à une compromission.
Mise en œuvre

La stratégie a été créée dans :

Gestion des stratégies de groupe (GPMC)

Nom de la stratégie :

GPO-GRIFFON-10-Journalisation-PowerShell

La GPO est liée au domaine afin d'assurer une collecte homogène des événements PowerShell.

Vérification

Mise à jour des stratégies :

gpupdate /force

Consultation des journaux :

Get-WinEvent -LogName "Microsoft-Windows-PowerShell/Operational"

Ou via :

Observateur d'événements
Applications and Services Logs
Microsoft
Windows
PowerShell
Operational
Bénéfices

La journalisation PowerShell apporte plusieurs avantages :

amélioration de la traçabilité ;
facilitation des investigations ;
détection plus rapide des incidents ;
renforcement des capacités d'audit ;
meilleure visibilité sur les actions réalisées par les administrateurs.
Application dans le projet Griffon

Cette stratégie s'inscrit dans la démarche globale de durcissement de l'environnement Active Directory.

Elle complète les mesures de protection déjà mises en œuvre en apportant une capacité supplémentaire de détection et d'analyse des événements de sécurité.

La journalisation PowerShell constitue un élément essentiel dans les environnements modernes où l'administration automatisée occupe une place importante.

Résultat

Les activités PowerShell exécutées sur les postes du domaine sont désormais enregistrées dans les journaux Windows, permettant une meilleure traçabilité des opérations et facilitant l'identification d'éventuels comportements suspects ou incidents de sécurité.