GPO-GRIFFON-02-Desactivation-SMBv1
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin de désactiver le protocole SMBv1 sur l'ensemble des postes et serveurs du domaine.

SMBv1 est une ancienne version du protocole de partage de fichiers Microsoft. Bien qu'il ait été largement utilisé pendant de nombreuses années, il présente aujourd'hui de nombreuses faiblesses de sécurité et n'est plus recommandé dans les environnements professionnels.

Plusieurs attaques majeures, dont les ransomwares WannaCry et NotPetya, ont exploité des vulnérabilités liées à SMBv1 pour compromettre des milliers de systèmes à travers le monde.

L'objectif de cette stratégie est donc de supprimer l'utilisation de ce protocole obsolète afin de réduire la surface d'attaque du système d'information.

Paramètres configurés

La stratégie applique les paramètres suivants :

Désactivation du protocole SMBv1 ;
Désactivation du pilote SMBv1 ;
Utilisation des versions modernes SMBv2 et SMBv3 ;
Application automatique à l'ensemble des équipements du domaine.
Risques traités

La désactivation de SMBv1 permet de réduire plusieurs risques :

propagation de logiciels malveillants ;
exploitation de vulnérabilités connues ;
compromission des partages réseau ;
élévation de privilèges ;
mouvement latéral dans le système d'information.
Vérification

Après application de la GPO, la présence du protocole SMBv1 peut être vérifiée à l'aide de PowerShell :

Get-SmbServerConfiguration | Select EnableSMB1Protocol

Résultat attendu :

EnableSMB1Protocol : False
Bénéfices

La mise en œuvre de cette stratégie apporte plusieurs avantages :

amélioration du niveau de sécurité global ;
réduction des vulnérabilités exploitables ;
conformité avec les recommandations Microsoft ;
conformité avec les recommandations ANSSI ;
protection contre certaines familles de ransomwares.
Résultat

L'ensemble des postes du domaine GRIFFON.LOCAL utilise désormais exclusivement les versions récentes du protocole SMB, offrant un niveau de sécurité nettement supérieur tout en conservant les fonctionnalités de partage de fichiers nécessaires au fonctionnement de l'entreprise.