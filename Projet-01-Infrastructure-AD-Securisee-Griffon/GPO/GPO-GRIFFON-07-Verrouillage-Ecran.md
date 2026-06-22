GPO-GRIFFON-07-Verrouillage-Ecran
Présentation

Cette stratégie impose le verrouillage automatique de la session utilisateur après une période d'inactivité.

L'objectif est de protéger les postes laissés sans surveillance et de limiter les risques d'accès physiques non autorisés.

Contexte

Dans un environnement professionnel, les utilisateurs peuvent s'absenter temporairement de leur poste de travail.

Sans verrouillage automatique, une personne malveillante pourrait accéder à la session ouverte et effectuer des actions sous l'identité de l'utilisateur.

Paramètres configurés

La stratégie applique :

Activation de l'écran de veille ;
Délai d'inactivité défini ;
Verrouillage automatique ;
Obligation de saisir le mot de passe au retour.
Risques traités

Cette stratégie réduit :

les accès non autorisés ;
l'usurpation de session ;
la consultation de données sensibles ;
les modifications non autorisées.
Vérification

Commande :

gpresult /r

Contrôle utilisateur :

Après la période d'inactivité configurée, la session se verrouille automatiquement.
Bénéfices
Protection des données ;
Renforcement de la sécurité physique ;
Sensibilisation des utilisateurs ;
Réduction des risques internes.
Résultat

Les sessions utilisateurs sont automatiquement verrouillées après une période d'inactivité.