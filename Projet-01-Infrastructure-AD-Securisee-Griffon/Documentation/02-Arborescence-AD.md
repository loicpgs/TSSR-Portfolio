

# Architecture Active Directory

## Présentation

L'infrastructure Active Directory du domaine **GRIFFON.LOCAL** a été conçue afin de répondre aux besoins d'administration, de sécurité et de gestion des accès d'une entreprise fictive spécialisée dans les secteurs de l'aérospatial et de la défense.

L'organisation retenue vise à faciliter l'administration quotidienne, l'application des stratégies de groupe ainsi que la mise en œuvre du modèle de gestion des droits **AGDLP**.

---

## Domaine Active Directory

| Élément                         | Valeur                     |
| ------------------------------- | -------------------------- |
| Nom DNS                         | griffon.local              |
| Nom NetBIOS                     | GRIFFON                    |
| Contrôleur de domaine principal | SRV-AD01                   |
| Service DNS                     | Intégré à Active Directory |

---

## Structure des unités d'organisation

L'arborescence a été conçue afin de séparer les utilisateurs, les ressources et les comptes privilégiés.

```text
GRIFFON.LOCAL
│
├── Administration
│
├── Utilisateurs
│   ├── Direction
│   ├── Ressources_Humaines
│   ├── Finance
│   ├── Bureau_Etudes
│   ├── Production
│   └── Informatique
│
├── Groupes
│   ├── Globaux
│   └── Domaines_Locaux
│
├── Postes
│   ├── Direction
│   ├── Production
│   └── Bureau_Etudes
│
├── Serveurs
│   ├── Controleurs_Domaine
│   ├── Serveurs_Fichiers
│   └── Serveurs_Applicatifs
│
└── Comptes_Privilegies
    ├── Administrateurs
    └── Comptes_Service
```

---

## Organisation des utilisateurs

Les comptes utilisateurs sont répartis selon leur appartenance métier.

| Service             | Description                                  |
| ------------------- | -------------------------------------------- |
| Direction           | Gouvernance et pilotage stratégique          |
| Ressources Humaines | Gestion administrative du personnel          |
| Finance             | Comptabilité et gestion budgétaire           |
| Bureau d'Études     | Conception et développement des systèmes     |
| Production          | Intégration, assemblage et validation        |
| Informatique        | Administration systèmes, réseaux et sécurité |

Cette séparation permet l'application de politiques de sécurité adaptées à chaque population d'utilisateurs.

---

## Organisation des groupes

L'unité d'organisation **Groupes** contient les groupes de sécurité utilisés dans le cadre du modèle AGDLP.

### Groupes globaux

Les groupes globaux regroupent les utilisateurs d'un même service.

Exemples :

* GG_DIRECTION
* GG_RH
* GG_FINANCE
* GG_BE
* GG_PRODUCTION
* GG_IT

### Groupes locaux de domaine

Les groupes locaux de domaine sont utilisés pour attribuer les permissions sur les ressources.

Exemples :

* DL_DIRECTION_RW
* DL_RH_RW
* DL_FINANCE_RW
* DL_BE_RW
* DL_PRODUCTION_RW
* DL_IT_ADMIN

---

## Gestion des postes et serveurs

Les postes de travail et les serveurs sont séparés afin de permettre l'application de stratégies de groupe spécifiques.

Cette approche facilite :

* l'administration des équipements ;
* la gestion du cycle de vie des machines ;
* le déploiement de paramètres de sécurité différenciés ;
* la mise en œuvre de stratégies de durcissement adaptées.

---

## Comptes privilégiés

Les comptes d'administration sont isolés dans une unité d'organisation dédiée.

Cette séparation permet de respecter le principe du moindre privilège et les bonnes pratiques recommandées par Microsoft, l'ANSSI et les benchmarks CIS.

Exemples :

* adm.lpages
* adm.mdupont
* adm.pmichel

Les comptes administrateurs sont utilisés uniquement pour les opérations d'administration et sont distincts des comptes utilisateurs quotidiens.

---

## Objectifs de conception

Cette architecture a été retenue afin de :

* séparer les utilisateurs des ressources ;
* faciliter l'application des stratégies de groupe ;
* simplifier l'administration de l'annuaire ;
* améliorer la lisibilité de l'infrastructure ;
* préparer l'implémentation du modèle AGDLP ;
* respecter le principe du moindre privilège ;
* renforcer la sécurité globale du système d'information.
