GPO-GRIFFON-08-Restriction-Panneau-Configuration
Présentation

Cette stratégie limite l'accès au Panneau de configuration et aux paramètres système Windows.

Elle vise à empêcher les utilisateurs standards de modifier la configuration des postes.

Contexte

Dans un parc informatique d'entreprise, il est important de garantir une configuration homogène des postes.

Les modifications réalisées par les utilisateurs peuvent entraîner :

des dysfonctionnements ;
des écarts de configuration ;
des incidents de sécurité.

Cette stratégie contribue à maintenir un environnement stable et maîtrisé.

Paramètres configurés

La stratégie applique :

Blocage du Panneau de configuration ;
Restriction de l'accès aux paramètres ;
Limitation des modifications système.
Risques traités

Cette stratégie permet de réduire :

les erreurs de configuration ;
les modifications non autorisées ;
les incidents utilisateurs ;
les écarts de conformité.
Vérification

Mise à jour :

gpupdate /force

Test utilisateur :

L'ouverture du Panneau de configuration est refusée.
Bénéfices
Standardisation du parc informatique ;
Réduction du support utilisateur ;
Amélioration de la stabilité des postes ;
Renforcement de la sécurité.
Résultat

Les utilisateurs standards ne peuvent plus modifier les paramètres système sensibles sans intervention de l'administrateur.