GPO-GRIFFON-05-Desactivation-Execution-Automatique
Présentation

Dans le cadre du projet Griffon, une stratégie de groupe a été mise en œuvre afin de désactiver les fonctionnalités AutoRun et AutoPlay sur l'ensemble des postes du domaine.

Cette mesure vise à empêcher l'exécution automatique de programmes présents sur les supports amovibles tels que les clés USB, les disques externes ou les supports optiques.

Contexte

Les supports amovibles constituent un vecteur d'infection fréquemment utilisé pour introduire des logiciels malveillants dans un système d'information.

Certains malwares exploitent les mécanismes AutoRun et AutoPlay afin d'exécuter automatiquement du code malveillant lors de l'insertion d'un périphérique.

La désactivation de ces fonctionnalités permet de conserver le contrôle sur les programmes exécutés sur les postes utilisateurs.

Paramètres configurés

La stratégie applique les paramètres suivants :

Désactivation d'AutoRun ;
Désactivation d'AutoPlay ;
Blocage de l'exécution automatique sur tous les lecteurs ;
Application à l'ensemble des postes du domaine.
Risques traités

Cette stratégie permet de réduire :

Les infections par clé USB ;
L'exécution involontaire de programmes ;
La propagation de logiciels malveillants ;
Les risques liés aux supports amovibles non maîtrisés.
Vérification

Mise à jour des stratégies :

gpupdate /force

Contrôle des stratégies appliquées :

gpresult /r
Bénéfices
Réduction des risques d'infection ;
Contrôle renforcé des périphériques amovibles ;
Sécurisation des postes utilisateurs ;
Application homogène de la politique de sécurité.
Résultat

Les supports amovibles ne peuvent plus exécuter automatiquement de programmes lors de leur connexion aux postes du domaine GRIFFON.LOCAL.
