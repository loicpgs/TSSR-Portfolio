GPO-GRIFFON-06-Desactivation-Compte-Invite
Présentation

Cette stratégie de groupe désactive le compte Invité intégré de Windows sur l'ensemble des ordinateurs du domaine GRIFFON.LOCAL.

Le compte Invité constitue un compte générique qui ne permet pas d'identifier précisément l'utilisateur connecté.

Sa désactivation participe à l'amélioration de la traçabilité et à la sécurisation des accès.

Contexte

Dans un environnement professionnel, chaque utilisateur doit disposer d'un compte nominatif permettant :

l'identification ;
la traçabilité ;
l'application des droits adaptés.

L'utilisation d'un compte Invité ne permet pas de respecter ces principes fondamentaux.

Paramètres configurés

La stratégie applique :

Désactivation du compte Guest ;
Interdiction d'ouverture de session ;
Application automatique sur tous les postes.
Risques traités

La mesure permet de limiter :

les accès anonymes ;
les connexions non tracées ;
les risques de compromission ;
les utilisations abusives des postes.
Vérification

Contrôle du compte :

Get-LocalUser -Name "Invité"

Résultat attendu :

Enabled : False
Bénéfices
Meilleure traçabilité ;
Contrôle des accès ;
Respect des bonnes pratiques Microsoft ;
Renforcement de la sécurité des postes.
Résultat

Le compte Invité est désactivé sur l'ensemble des postes du domaine.