\# Conception de l'infrastructure Griffon



\## Contexte



Dans le cadre d'un laboratoire personnel reproduisant les compétences acquises lors d'un stage dans le secteur de l'aérospatial et de la défense, une infrastructure Active Directory sécurisée est déployée sous Windows Server 2022.



L'objectif est de disposer d'un socle d'administration centralisé permettant la gestion des utilisateurs, des groupes, des postes de travail et des serveurs.



\## Domaine



Nom DNS :



griffon.local



Nom NetBIOS :



GRIFFON



\## Contrôleur de domaine



Nom :



SRV-AD01



Système :



Windows Server 2022



Rôles :



\* Active Directory Domain Services

\* DNS



\## Réseau



Réseau principal :



192.168.10.0/24



Passerelle :



192.168.10.1



Serveur AD :



192.168.10.10



\## Poste client



Nom :



PC-CLI01



Système :



Windows 11 Professionnel



\## Objectifs de sécurité



\* Mise en œuvre du modèle AGDLP

\* Gestion centralisée des comptes

\* Gestion centralisée des stratégies de groupe

\* Durcissement du système

\* Journalisation des événements

\* Application de recommandations ANSSI

\* Remédiations CIS



