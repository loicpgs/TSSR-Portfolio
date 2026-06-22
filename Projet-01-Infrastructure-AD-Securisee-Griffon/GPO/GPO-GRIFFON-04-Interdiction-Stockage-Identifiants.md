GPO-GRIFFON-04-Interdiction-Stockage-Identifiants
Présentation

Cette stratégie de groupe interdit l'enregistrement local des informations d'identification sur les postes du domaine.

Son objectif est de protéger les comptes utilisateurs contre les risques liés au stockage de mots de passe et d'identifiants sur les postes de travail.

Contexte

Par défaut, certaines applications Windows peuvent proposer à l'utilisateur d'enregistrer :

ses mots de passe ;
ses identifiants réseau ;
ses informations d'authentification.

Si un poste est compromis, ces informations peuvent être récupérées par un attaquant.

Paramètres configurés

La stratégie applique :

interdiction du stockage des informations d'identification ;
blocage de la mémorisation automatique ;
protection des données d'authentification.
Risques traités

Cette stratégie permet de réduire :

le vol d'identifiants ;
l'usurpation de comptes ;
les compromissions de sessions ;
les risques liés aux postes partagés.
Vérification

Mise à jour :

gpupdate /force

Contrôle :

gpresult /r
Bénéfices
Protection des comptes utilisateurs ;
Réduction des risques de compromission ;
Renforcement de la sécurité des postes ;
Application du principe du moindre privilège.
Résultat

Les informations d'authentification ne peuvent plus être stockées localement par les utilisateurs.