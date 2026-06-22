GPO-GRIFFON-05-Desactivation-Execution-Automatique
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été déployée afin de désactiver les fonctionnalités AutoRun et AutoPlay sur l'ensemble des postes du domaine.

L'objectif est d'empêcher l'exécution automatique de programmes présents sur des supports amovibles tels que les clés USB, disques externes ou supports optiques.

Cette mesure de sécurité est couramment appliquée dans les environnements professionnels afin de réduire les risques d'infection par des logiciels malveillants.

Contexte

Les supports amovibles constituent un vecteur d'attaque fréquemment utilisé pour introduire des logiciels malveillants dans un système d'information.

Certaines menaces exploitent les mécanismes AutoRun et AutoPlay afin de lancer automatiquement un programme dès l'insertion d'un périphérique.

La désactivation de ces fonctionnalités permet d'obliger l'utilisateur à lancer manuellement les fichiers présents sur le support, limitant ainsi les risques d'exécution involontaire.

Paramètres configurés

La stratégie applique :

Désactivation d'AutoRun ;
Désactivation d'AutoPlay ;
Blocage de l'exécution automatique sur tous les lecteurs ;
Application à l'ensemble des postes du domaine.
Risques traités

Cette stratégie réduit :

les infections par clé USB ;
les exécutions involontaires ;
la propagation de malwares ;
les risques liés aux périphériques amovibles non maîtrisés.
Vérification

Mise à jour de la stratégie :

gpupdate /force

Contrôle :

gpresult /r
Bénéfices
Réduction des risques d'infection ;
Contrôle renforcé des périphériques ;
Sécurisation des postes utilisateurs ;
Application homogène de la politique de sécurité.
Résultat

Les supports amovibles ne peuvent plus exécuter automatiquement de programmes lors de leur connexion au poste.

GPO-GRIFFON-06-Desactivation-Compte-Invite