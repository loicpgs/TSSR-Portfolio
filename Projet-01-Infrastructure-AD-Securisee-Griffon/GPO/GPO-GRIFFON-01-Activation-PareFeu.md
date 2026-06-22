GPO-GRIFFON-01-Activation-PareFeu
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en place afin d'activer et de configurer automatiquement le Pare-feu Windows sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Le pare-feu constitue l'une des premières lignes de défense d'un système d'information. Il permet de contrôler les communications réseau entrantes et sortantes afin de limiter les risques d'accès non autorisés aux équipements du domaine.

L'objectif de cette stratégie est de garantir que tous les postes bénéficient d'un niveau de protection homogène, indépendamment des actions réalisées par les utilisateurs.

Cette approche permet également à l'administrateur de conserver un contrôle centralisé sur les paramètres de sécurité réseau des ordinateurs du domaine.

Contexte

Dans une infrastructure Active Directory, les postes utilisateurs sont constamment exposés à différents types de communications réseau :

échanges entre postes du domaine ;
accès aux partages réseau ;
accès aux applications métiers ;
connexions Internet ;
services d'administration.

Sans politique de filtrage centralisée, un utilisateur pourrait désactiver manuellement le pare-feu ou modifier sa configuration, augmentant ainsi la surface d'attaque du système d'information.

La mise en œuvre d'une GPO dédiée permet donc d'assurer le maintien permanent des paramètres de sécurité définis par l'administrateur.

Paramètres configurés

La stratégie active le Pare-feu Windows Defender sur les trois profils réseau disponibles :

Profil Domaine

Ce profil est appliqué lorsque l'ordinateur est connecté au domaine Active Directory.

Paramètres :

Pare-feu activé ;
Blocage des connexions entrantes non sollicitées ;
Autorisation des communications nécessaires au fonctionnement du domaine ;
Journalisation des événements de sécurité.
Profil Privé

Ce profil est utilisé sur les réseaux internes considérés comme fiables.

Paramètres :

Pare-feu activé ;
Filtrage des communications ;
Contrôle des connexions entrantes.
Profil Public

Ce profil est appliqué lorsque le poste est connecté à un réseau non approuvé.

Paramètres :

Pare-feu activé ;
Blocage renforcé des connexions entrantes ;
Protection maximale contre les accès externes.
Risques traités

Cette stratégie permet de réduire plusieurs risques de sécurité :

Accès non autorisés

Le pare-feu bloque les tentatives de connexion provenant d'équipements non autorisés.

Propagation de logiciels malveillants

Certains malwares exploitent les communications réseau pour se propager d'une machine à une autre.

Le filtrage des connexions permet de limiter cette propagation.

Exposition de services inutiles

Des services installés sur un poste peuvent écouter sur différents ports réseau.

Le pare-feu limite l'accès à ces services lorsqu'ils ne sont pas explicitement autorisés.

Attaques réseau

Le pare-feu réduit les risques liés :

aux scans de ports ;
aux tentatives d'exploitation de vulnérabilités ;
aux connexions malveillantes ;
aux mouvements latéraux dans le réseau.
Mise en œuvre

La stratégie a été créée dans la console :

Gestion des stratégies de groupe (GPMC)

Nom de la stratégie :

GPO-GRIFFON-01-Activation-PareFeu

La GPO est liée au domaine :

griffon.local

afin d'assurer son application sur l'ensemble des postes concernés.

Vérification de l'application

Une fois la stratégie appliquée, plusieurs contrôles peuvent être réalisés.

Mise à jour des stratégies :

gpupdate /force

Vérification de l'application :

gpresult /r

Vérification de l'état du pare-feu :

Get-NetFirewallProfile

Résultat attendu :

Domain  : True
Private : True
Public  : True
Bénéfices

La mise en œuvre de cette stratégie apporte plusieurs avantages :

protection homogène de l'ensemble des postes ;
administration centralisée de la sécurité réseau ;
réduction des risques d'intrusion ;
limitation des mouvements latéraux ;
meilleure maîtrise des communications réseau ;
conformité avec les bonnes pratiques Microsoft ;
amélioration du niveau de sécurité global du domaine.
Application dans le projet Griffon

Cette GPO constitue l'un des premiers mécanismes de sécurité déployés dans l'infrastructure Active Directory GRIFFON.LOCAL.

Elle participe directement au durcissement des postes de travail et complète les autres mesures de sécurité mises en œuvre dans le projet telles que :

la désactivation de SMBv1 ;
la désactivation de LLMNR ;
l'activation de Windows Defender ;
la journalisation PowerShell ;
les remédiations CIS.

L'ensemble de ces mesures contribue à renforcer la sécurité globale de l'environnement et à appliquer le principe de défense en profondeur au sein du domaine Active Directory.