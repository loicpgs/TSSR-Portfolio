


# Mise en œuvre du modèle AGDLP

## Présentation

Dans le cadre du projet Griffon, les autorisations d'accès aux ressources sont gérées selon le modèle **AGDLP** recommandé par Microsoft pour les environnements Active Directory.

Cette méthode permet de simplifier l'administration des droits tout en améliorant la sécurité et la traçabilité des accès.

AGDLP signifie :

| Acronyme | Signification                                |
| -------- | -------------------------------------------- |
| A        | Account (Compte utilisateur)                 |
| G        | Global Group (Groupe global)                 |
| DL       | Domain Local Group (Groupe local de domaine) |
| P        | Permission (Autorisation sur une ressource)  |

---

## Principe général

Le modèle repose sur une séparation entre les utilisateurs et les permissions attribuées aux ressources.

```text
Compte utilisateur
        │
        ▼
Groupe Global
        │
        ▼
Groupe Local de Domaine
        │
        ▼
Permissions sur la ressource
```

Cette approche permet de gérer les accès par groupe plutôt que directement par utilisateur.

---

## Exemple : Bureau d'Études

### Utilisateur

```text
Jean Martin
```

### Chaîne d'appartenance

```text
Jean Martin
        │
        ▼
GG_BE
        │
        ▼
DL_BE_RW
        │
        ▼
Partage Bureau_Etudes
```

### Permissions attribuées

* Lecture
* Modification
* Création de fichiers
* Suppression de fichiers

---

## Exemple : Ressources Humaines

### Utilisateur

```text
Marie Dupont
```

### Chaîne d'appartenance

```text
Marie Dupont
        │
        ▼
GG_RH
        │
        ▼
DL_RH_RW
        │
        ▼
Partage RH
```

### Permissions attribuées

* Lecture
* Écriture
* Modification

L'accès est limité aux seuls membres du service Ressources Humaines.

---

## Exemple : Informatique

### Utilisateur

```text
Loïc Pages
```

### Chaîne d'appartenance

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
Ressources d'administration
```

### Permissions attribuées

* Administration des serveurs
* Gestion des postes de travail
* Accès aux outils d'administration
* Gestion des ressources informatiques

---

## Groupes déployés dans le projet Griffon

### Groupes globaux

| Groupe        | Service             |
| ------------- | ------------------- |
| GG_DIRECTION  | Direction           |
| GG_RH         | Ressources Humaines |
| GG_FINANCE    | Finance             |
| GG_BE         | Bureau d'Études     |
| GG_PRODUCTION | Production          |
| GG_IT         | Informatique        |

### Groupes locaux de domaine

| Groupe           | Ressource protégée          |
| ---------------- | --------------------------- |
| DL_DIRECTION_RW  | Répertoire Direction        |
| DL_RH_RW         | Répertoire RH               |
| DL_FINANCE_RW    | Répertoire Finance          |
| DL_BE_RW         | Répertoire Bureau d'Études  |
| DL_PRODUCTION_RW | Répertoire Production       |
| DL_IT_ADMIN      | Ressources d'administration |

---

## Avantages de l'approche AGDLP

L'utilisation du modèle AGDLP présente plusieurs bénéfices :

* simplification de l'administration des droits ;
* réduction du risque d'erreur de configuration ;
* amélioration de la lisibilité de l'infrastructure ;
* gestion centralisée des autorisations ;
* respect des bonnes pratiques Microsoft ;
* meilleure évolutivité de l'annuaire Active Directory ;
* conformité avec les principes du moindre privilège.

---

## Application dans le projet Griffon

L'ensemble des accès aux partages réseau et aux ressources de l'infrastructure repose sur cette architecture.

Les utilisateurs sont intégrés aux groupes globaux correspondant à leur service, lesquels sont ensuite associés aux groupes locaux de domaine responsables de l'attribution des permissions.

Cette organisation garantit une gestion cohérente, sécurisée et facilement maintenable des droits d'accès au sein du domaine GRIFFON.LOCAL.
