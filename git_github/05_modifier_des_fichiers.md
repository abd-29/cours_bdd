# Gérer les fichiers dans un dépôt Git
## 1. Ajouter ou modifier des fichiers
Pour enregistrer des changements, on utilise :

 - `git add` → indexe les fichiers (prépare pour le commit).
 - `git commit` → valide et enregistre l’état des fichiers dans l’historique.

 Attention : le commit prend en compte l’état du fichier au moment du dernier git add.

Astuce : git commit -a permet de valider directement tous les fichiers modifiés déjà suivis, sans passer par git add.

## 2. Supprimer ou exclure un fichier du suivi
Supprimer un fichier avec rm ne suffit pas : Git continue de le suivre.

Pour supprimer et arrêter le suivi :

```bash
git rm nom-du-fichier
git commit -m "Suppression du fichier"
```

Pour garder le fichier dans le projet mais l’exclure du suivi :

```bash
git rm --cached nom-du-fichier
git commit -m "Exclusion du suivi"
```

## 3. Retirer un fichier de l’index
Si un fichier a été ajouté par erreur à l’index, on peut l’en retirer sans perdre son suivi :

```bash
git reset HEAD nom-du-fichier
```
Le fichier reste suivi mais ne sera pas inclus dans le prochain commit.

## 4. Ignorer certains fichiers
Pour éviter d’indexer des fichiers sensibles, temporaires ou générés automatiquement, on utilise un fichier `.gitignore`.

On peut y définir :

 - Des fichiers spécifiques.
 - Des motifs (ex. *.log).
 - Des répertoires entiers (/dossier/).

## 5. Renommer un fichier
Pour renommer un fichier tout en conservant son suivi :

```bash
git mv ancien-nom nouveau-nom
git commit -m "Renommage du fichier"
```

# En résumé :

`git add` + `git commit` → ajout/modification.

`git rm` / `git rm --cached` → suppression ou exclusion.

`git reset HEAD` → retirer de l’index.

`.gitignore` → ignorer certains fichiers.

`git mv` → renommer un fichier.
