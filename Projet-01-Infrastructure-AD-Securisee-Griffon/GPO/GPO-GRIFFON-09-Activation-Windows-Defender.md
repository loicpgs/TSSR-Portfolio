GPO-GRIFFON-09-Activation-Windows-Defender
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été déployée afin d'assurer l'activation et la configuration centralisée de Microsoft Defender sur l'ensemble des postes intégrés au domaine GRIFFON.LOCAL.

Microsoft Defender constitue la solution antivirus native de Windows. Son rôle est de détecter, bloquer et supprimer les menaces susceptibles de compromettre la sécurité des systèmes et des données de l'entreprise.

La centralisation de sa configuration via une GPO permet de garantir un niveau de protection homogène sur l'ensemble du parc informatique et d'éviter qu'un utilisateur ne modifie ou désactive certains paramètres de sécurité.

Contexte

Les postes de travail représentent l'une des principales cibles des cyberattaques. Les menaces peuvent prendre différentes formes :

virus ;
chevaux de Troie ;
ransomwares ;
logiciels espions ;
scripts malveillants ;
téléchargements infectés.

Une protection antivirus active et correctement configurée constitue donc une mesure essentielle dans une stratégie de défense en profondeur.

La mise en œuvre de cette GPO vise à garantir que chaque poste du domaine bénéficie d'une protection permanente contre ces menaces.

Paramètres configurés

La stratégie applique notamment :

Activation de Microsoft Defender ;
Activation de la protection en temps réel ;
Activation de la surveillance comportementale ;
Analyse automatique des fichiers ;
Contrôle des programmes exécutés ;
Protection contre les logiciels malveillants ;
Mise à jour automatique des signatures antivirus.
Risques traités

Cette stratégie permet de réduire :

les infections par logiciels malveillants ;
les attaques de type ransomware ;
l'exécution de fichiers malveillants ;
les téléchargements dangereux ;
la propagation de menaces au sein du domaine.
Mise en œuvre

La stratégie a été créée dans la console :

Gestion des stratégies de groupe (GPMC)

Nom de la stratégie :

GPO-GRIFFON-09-Activation-Windows-Defender

La GPO est liée au domaine Active Directory afin de garantir l'application des paramètres sur l'ensemble des postes concernés.

Vérification

Après application de la stratégie, plusieurs contrôles peuvent être réalisés.

Mise à jour des stratégies :

gpupdate /force

Vérification de l'état de Defender :

Get-MpComputerStatus

Résultat attendu :

AMServiceEnabled : True
AntivirusEnabled : True
RealTimeProtectionEnabled : True

Vérification des mises à jour :

Update-MpSignature
Bénéfices

La mise en œuvre de cette stratégie apporte plusieurs avantages :

protection continue des postes ;
détection automatique des menaces ;
administration centralisée ;
homogénéité de la configuration antivirus ;
réduction du risque de compromission ;
amélioration du niveau de sécurité global du domaine.
Application dans le projet Griffon

Cette stratégie complète les autres mesures de sécurité mises en œuvre dans l'infrastructure Active Directory telles que le pare-feu Windows, la désactivation de SMBv1 et la désactivation de LLMNR.

Elle participe à la protection des postes utilisateurs et constitue un élément essentiel de la politique de sécurité du domaine GRIFFON.LOCAL.

Résultat

L'ensemble des postes du domaine dispose désormais d'une protection antivirus active, administrée de manière centralisée et conforme aux bonnes pratiques de sécurisation des environnements Microsoft.