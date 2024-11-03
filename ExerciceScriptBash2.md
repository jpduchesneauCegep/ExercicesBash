# Exercice  - Script bash 2 - Jouer avec les  variables

Jean-Pierre Duchesneau, Cégep Sainte-Foy, DFCSAE, Automne 2024

---

**Travail individuel.**

**Durée** : 2 heures

**Système d'exploitation**: Ubuntu 24.04 ou un autre OS ayant Bash.

**Référence pour l'exercice** : Note du cours et ce résumé [bash](Bash.md).

**Évaluation** : Formative, aucun document à remettre. Le corrigé vous sera transmit au prochain cours.

**Compétences ciblés** :

- OOQ1 -4 : Effectuer des tâches de gestion du système d'exploitation  :
  - S'initier aux commandes de base du SHELL
  - Utiliser des scripts avec le SHELL Bash
  - Programmer, tester et déboguer des scripts

### Prérequis
  - Déplacez-vous dans depôt cré dans l'exerice précédent 
  - Créer un nouveau répertoire pour l'exercice 12

 **Attention : N'utilisez jamais le copier/coller, cette technique ne vous fait pas comprendre ce que vous faites. ** 

```bash
cd  # Vous assurez d'être dans votre $HOME
cd [Le nom de votre dépôt git]
mkdir exercice12
cd exercice12
git commit -m "création du dossier pour l'exercie 12."
git push

# Vous placerez tous vos scritps de cette exercice ici.
# N'oubliez pas de faire des commits et des push pour garder une trace et une sauvegarde de votre travail.
```

## Réaliser les scripts suivants

### Les page man sont essentiel à la réalisation des sciprts, apprenez à les utiliser.

   ```bash
 man [commande]
   ```

## Exercices pour débutants en code Bash:

1. **Afficher les variables d'environnement :**
   Écrivez un script qui affiche les variables d'environnement de la session en cours. Appelez le `afficher_variables.sh`.

2. **Afficher un message de bienvenue :**
   Écrivez un script qui affiche un message de bienvenue lorsque vous l'exécutez. Appellez le `bienvenue.sh`.

3. Modifier le script pour qu'il affiche votre nom d'utilisateur avec la commande `whoami` et votre nom de machine en utilisant la variable d'environnement.

4. **Afficher la date et l'heure :**
   Ajouter au scrirpt  `bienvenue.sh` la date et l'heure actuelles et ce, au format jours, date et heure (exemple : lundi 4 novembre 2024 à 11:30). Aidez-vous du man date.

5. **Afficher la liste des fichiers dans un répertoire :**
   Écrivez un script qui affiche la liste des fichiers dans le répertoire où il se trouve. Nom du script `listRep.sh`.

6. **Créer un répertoire :**
   Écrivez un script qui demande à l'utilisateur un nom de répertoire, puis crée ce répertoire. Nom du script `NewRep.sh`.

7. **Copier un fichier :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier existant, puis copie ce fichier dans un autre répertoire. Nom du script `cpFichier.sh`.

8. **Supprimer un fichier :**
    Écrivez un script qui demande à l'utilisateur le nom d'un fichier existant, puis le supprime.  Nom du script `delFichier.sh`.

9. **Calculer la somme de deux nombres :**
   Écrivez un script qui demande à l'utilisateur deux nombres, puis affiche leur somme.  Nom du script `somme.sh`.

10. **Afficher les informations sur le système :**
   Écrivez un script qui affiche des informations sur le système, telles que le nom de l'utilisateur, l'architecture du processeur, , la mémoire vive, le système d'exploitation. Nom du script  `infoSystème.sh`.
   Vous pouvez consulter l'IA pour trouver les  commandes appropriées.  Nom du script `afficheSys.sh`.

11. **Afficher les interfaces réseau :**
   Écrivez un script qui affiche les interfaces réseau disponibles sur le système.Nom du script `interface.sh`.

Ces exercices devraient fournir une bonne base pour commencer à pratiquer le code Bash sans utiliser d'instructions conditionnelles.

## Exercices avec la structure de contrôle si :

1. **Vérifier si un fichier existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier existe ou non. Nom du script  `fichier.sh`.

2. **Vérifier si un répertoire existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire existe ou non. 
   Si le réperetoire n'existe pas, ils doit le créer. Nom du script  `NewRepAvecIF.sh`.

3. **Vérifier si un répertoire est vide :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire est vide ou non. Nom du script  `VerifRepAvecIF.sh`.

4. **Vérifier si un utilisateur existe :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur existe sur le système.Nom du script  `NewRepAvecIF.sh`.

5. **Vérifier si un utilisateur est connecté :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur est actuellement connecté.Nom du script  `userConnecte.sh`.

6. **Vérifier si un fichier est exécutable :**
    Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier est exécutable ou non. Nom du script  `FichierExec.sh`.

7. **Vérifier si un fichier est vide :**
   Dans votre script `fichier.sh`, si le fichier existe (condition vrai) ajouter l'affichage des informations suivantes : 
      - Type de fichier, 
      - droits, propriétaire et groupe
      - La tailles en format lisible (exemple 1k, 234M, 2G, etc.)
      - La date de la dernière modification
   Si le fichier n'existe pas demander à l'usager s'il veut le créer.

### Un peu de math!

**Vérifier si un nombre est positif, négatif ou nul :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est positif, négatif ou nul. Nom du script  `nbPosNeg.sh`.

8. **Vérifier si un nombre est pair ou impair :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est pair ou impair.Nom du script  `nbPair.sh`.

9. **Vérifier si un nombre est un multiple de 5 :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est un multiple de 5 ou non. Nom du script  `multiple.sh`.


Ces exercices permettre  de pratiquer l'utilisation de l'instruction conditionnelle `if` en Bash.

### N'oubliez pas de faire un git push a la fin pour sauvegarder votre travail.

