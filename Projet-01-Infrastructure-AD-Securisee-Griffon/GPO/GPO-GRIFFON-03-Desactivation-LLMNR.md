GPO-GRIFFON-03-Desactivation-LLMNR
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été déployée afin de désactiver le protocole LLMNR (Link-Local Multicast Name Resolution) sur l'ensemble des postes du domaine Active Directory.

LLMNR est un mécanisme de résolution de noms utilisé par Windows lorsqu'une requête DNS échoue. Bien qu'il facilite certaines communications locales, ce protocole présente plusieurs faiblesses de sécurité pouvant être exploitées par un attaquant présent sur le réseau.

L'objectif de cette stratégie est de renforcer la sécurité des communications réseau et de limiter les risques d'interception d'identifiants.

Contexte

Dans un environnement Windows, lorsqu'un poste ne parvient pas à résoudre un nom via DNS, il peut utiliser automatiquement LLMNR afin de rechercher la ressource sur le réseau local.

Cette fonctionnalité peut être détournée à l'aide d'outils tels que :

Responder ;
Inveigh ;
Metasploit.

Ces outils permettent de répondre frauduleusement aux requêtes LLMNR afin de récupérer des informations d'authentification.

Paramètres configurés

La stratégie applique les paramètres suivants :

Désactivation de LLMNR ;
Utilisation exclusive du DNS ;
Blocage des résolutions multicast.
Risques traités

Cette GPO réduit :

les attaques de type spoofing ;
l'interception d'identifiants NTLM ;
les attaques de type Man-in-the-Middle ;
les mouvements latéraux sur le réseau.
Vérification

Commande de contrôle :

gpupdate /force

Vérification de la stratégie :

gpresult /r
Bénéfices
Réduction de la surface d'attaque ;
Protection des identifiants utilisateurs ;
Renforcement de la sécurité réseau ;
Conformité ANSSI et CIS.
Résultat

L'ensemble des postes du domaine utilise désormais exclusivement le DNS comme mécanisme de résolution de noms.