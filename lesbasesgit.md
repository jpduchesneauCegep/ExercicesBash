# Quelques commandes de bases en git

- Créer votre dépôt distant (Git Hub, GitLab, etc.)

- Cloner votre dépôt distant sur votre machine locale

```bash
git clone https://github.com/username/repository.git
# Placez vous de votre dépôt local
cd repository
```

- Travailler sur votre projet
- Faite les étapes suivante avec un nouveau fichier:

```bash
# Créer un nouveau fichier
touch fichier.txt
# Ajouter le fichier à votre dépôt local
git add fichier.txt
# Créer un nouveau commit
git commit -m " Ajout d'un nouveau fichier"

```
- Créer régulièrement des commits pour suivre votre travail
- Fait des git log pour voir l'historique de vos commits
```bash
git log
```
- Faire des git status pour voir les changements dans votre dépôt local
```bash
git status
```

- N'oubliez pas les git push pour envoyer vos changements vers votre dépôt distant
```bash
git push
```
- Si vous avez des conflits, faites des git pull pour récupérer les changements du dépôt distant.