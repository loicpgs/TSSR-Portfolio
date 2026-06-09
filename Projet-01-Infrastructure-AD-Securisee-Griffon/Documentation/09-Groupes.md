

# Groupes Active Directory

## Présentation

L'infrastructure Active Directory du domaine **GRIFFON.LOCAL** s'appuie sur une organisation des groupes conforme au modèle **AGDLP** recommandé par Microsoft.

Cette approche permet de séparer les utilisateurs, les groupes métiers et les permissions attribuées aux ressources afin de simplifier l'administration et de renforcer la sécurité.

---

## Groupes globaux

Les groupes globaux regroupent les utilisateurs appartenant à un même service métier.

| Groupe        | Service associé     |
| ------------- | ------------------- |
| GG_DIRECTION  | Direction           |
| GG_RH         | Ressources Humaines |
| GG_FINANCE    | Finance             |
| GG_BE         | Bureau d'Études     |
| GG_PRODUCTION | Production          |
| GG_IT         | Informatique        |

### Utilisation

Les utilisateurs sont intégrés à leur groupe global en fonction de leur fonction au sein de l'entreprise.

Exemple :

```text
Loic Pages
    ↓
GG_IT
```

---

## Groupes locaux de domaine

Les groupes locaux de domaine sont utilisés pour attribuer les permissions sur les ressources de l'entreprise.

| Groupe           | Ressource protégée             |
| ---------------- | ------------------------------ |
| DL_DIRECTION_RW  | Répertoire Direction           |
| DL_RH_RW         | Répertoire Ressources Humaines |
| DL_FINANCE_RW    | Répertoire Finance             |
| DL_BE_RW         | Répertoire Bureau d'Études     |
| DL_PRODUCTION_RW | Répertoire Production          |
| DL_IT_ADMIN      | Ressources d'administration    |

### Utilisation

Les groupes globaux sont intégrés aux groupes locaux de domaine.

Exemple :

```text
GG_BE
    ↓
DL_BE_RW
    ↓
Partage Bureau_Etudes
```

Cette architecture permet d'éviter l'attribution directe des permissions aux utilisateurs.

---

## Groupes d'administration

Les opérations d'administration sont réalisées à l'aide de groupes dédiés afin de respecter les principes de séparation des privilèges.

| Groupe            | Rôle                                |
| ----------------- | ----------------------------------- |
| GG_ADMINS_GRIFFON | Administrateurs de l'infrastructure |
| Admins du domaine | Administration Active Directory     |
| Administrateurs   | Administration locale des systèmes  |

---

## Comptes privilégiés

Les comptes d'administration sont distincts des comptes utilisateurs quotidiens.

| Compte         | Fonction                                 |
| -------------- | ---------------------------------------- |
| adm.lpages     | Administration du domaine                |
| adm.pmichel    | Administration systèmes                  |
| adm.mdupont    | Administration support et infrastructure |

Cette séparation permet de réduire les risques liés à l'utilisation quotidienne de comptes à privilèges élevés.

---

## Exemple complet AGDLP

```text
Loic Pages
        │
        ▼
GG_IT
        │
        ▼
DL_IT_ADMIN
        │
        ▼
Permissions d'administration
```

---

## Objectifs de sécurité

L'organisation retenue permet :

* une gestion centralisée des droits ;
* une meilleure traçabilité des accès ;
* une réduction du risque d'erreur d'attribution ;
* une administration simplifiée ;
* l'application du principe du moindre privilège ;
* le respect des bonnes pratiques Microsoft, CIS et ANSSI.

Cette architecture constitue le socle de gestion des accès du projet Griffon et sera utilisée pour l'ensemble des ressources déployées dans le laboratoire.


