# Exercice 12 - Script bash 2 - Jouer avec les  variables

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

**Pour avoir la solution aux exercices précédents , cliquer sur la flèche avant le mot Détail.**
<details>
<summary>Réponses</summary>

1. **Afficher les variables d'environnement :**
   ```bash
   #!/bin/bash
   printenv
   ```

2. **Afficher un message de bienvenue :**
   ```bash
   #!/bin/bash
   echo "Bienvenue dans mon script Bash !"
   ```

3. Script `bienvenue.sh` modifié
   ```bash
   #!/bin/bash

    # Obtenir le nom de l'utilisateur, du système
    USER=$(whoami)
    HOSTNAME=$(hostname)

    # Afficher un message de bienvenue personnalisé
    echo "Bienvenue $USER sur la machine $HOSTNAME !"
   ```

4. **Ajouter la date et l'heure :**
    ```bash
    #!/bin/bash

    # Obtenir la date et l'heure au format souhaité
    DATE=$(date +"%A %d %B %Y à %H:%M:%S")

    # Obtenir le nom de l'utilisateur et du système
    USER=$(whoami)
    HOSTNAME=$(hostname)

    # Afficher le message de bienvenue
    echo "Bienvenue $USER dans mon script Bash !"
    echo "Exécuté sur la machine $HOSTNAME !"
    echo "Il est présentement $DATE"
    ```

5. **Afficher la liste des fichiers dans un répertoire :**
     ```bash
    #!/bin/bash

    # Répertoire à lister (vous pouvez remplacer "." par le chemin du répertoire désiré)
    repertoire="./"

    # Liste les fichiers et sous-répertoires
    ls "$repertoire"
     ```

6. **Créer un répertoire :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du répertoire : "
   read dirname
   mkdir -p $dirname
   ```

7. **Copier un fichier :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du fichier à copier : "
   read filename
   echo "Entrez le répertoire de destination : "
   read destdir
   cp $filename $destdir

8. **Supprimer un fichier :**
    ```bash
    #!/bin/bash
    echo "Entrez le nom du fichier à supprimer : "
    read filename
    rm $filename
    ```
   ```

9. **Calculer la somme de deux nombres :**
   ```bash
   #!/bin/bash
   echo "Entrez le premier nombre : "
   read num1
   echo "Entrez le deuxième nombre : "
   read num2
   sum=$((num1 + num2))
   echo "La somme est : $sum"
   ```

10. **Afficher les informations sur le système :**
   ```bash
   #!/bin/bash
   echo "Nom de l'utilisateur : $USER"
   echo "Architecture du processeur : $(uname -m)"
   ```

11. **Afficher les interfaces réseau :**
   ```bash
   #!/bin/bash
   ip address
   ```
</details>


## Exercices avec la structure de contrôle si :

1. **Vérifier si un fichier existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier existe ou non. Nom du script  `fichier.sh`.

2. **Vérifier si un répertoire existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire existe ou non. 
   Si le réperetoire n'existe pas, ils doit le créer. Nom du script  `verifRepAvecIF.sh`.

3. **Vérifier si un répertoire est vide :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire est vide ou non. Nom du script  `verifRepVideAvecIF.sh`.

4. **Vérifier si un utilisateur existe :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur existe sur le système.Nom du script  `verifUserAvecIF.sh`.

5. **Vérifier si un utilisateur est connecté :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur est actuellement connecté.Nom du script  `userConnecte.sh`.

6. **Vérifier si un fichier est exécutable :**
    Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier est exécutable ou non. Nom du script  `fichierExec.sh`.

7. **Vérifier si un fichier est vide :**
   Dans votre script `fichier.sh`, si le fichier existe (condition vrai) ajouter l'affichage des informations suivantes : 
      - Type de fichier, 
      - droits, propriétaire et groupe
      - La tailles en format lisible (exemple 1k, 234M, 2G, etc.)
      - La date de la dernière modification
   Si le fichier n'existe pas demander à l'usager s'il veut le créer.

### Un peu de math!

8. **Vérifier si un nombre est positif, négatif ou nul :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est positif, négatif ou nul. Nom du script  `nbPosNeg.sh`.

9. **Vérifier si un nombre est pair ou impair :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est pair ou impair.Nom du script  `nbPair.sh`.

10. **Vérifier si un nombre est un multiple de 5 :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est un multiple de 5 ou non. Nom du script  `multiple.sh`.


Ces exercices permettre  de pratiquer l'utilisation de l'instruction conditionnelle `if` en Bash.

### N'oubliez pas de faire un git push a la fin pour sauvegarder votre travail.

Voici les réponses aux scripts correspondant aux exercices précédents :

<details>
<summary>Réponses</summary>

1. **Vérifier si un fichier existe :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du fichier : "
   read filename
   if [ -e "$filename" ]; then
       echo "Le fichier existe."
   else
       echo "Le fichier n'existe pas."
   fi
   ```

2. **Vérifier si un répertoire existe :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du répertoire : "
   read dirname
   if [ -d "$dirname" ]; then
       echo "Le répertoire existe."
   else
       echo "Le répertoire n'existe pas."
   fi
   ```

3. **Vérifier si un répertoire est vide :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du répertoire : "
   read dirname
   if [ "$(ls -A $dirname)" ]; then
       echo "Le répertoire n'est pas vide."
   else
       echo "Le répertoire est vide."
   fi
   ```


4. **Vérifier si un utilisateur existe :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom d'utilisateur : "
   read username
   if id "$username" &>/dev/null; then
       echo "L'utilisateur existe."
   else
       echo "L'utilisateur n'existe pas."
   fi
   `
5. **Vérifier si un utilisateur est connecté :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom d'utilisateur : "
   read username
   if who | grep -q "^$username "; then
       echo "$username est connecté."
   else
       echo "$username n'est pas connecté."
   fi
   `````

6. **Vérifier si un fichier est exécutable :**
    ```bash
    #!/bin/bash
    echo "Entrez le nom du fichier : "
    read filename
    if [ -x "$filename" ]; then
        echo "Le fichier est exécutable."
    else
        echo "Le fichier n'est pas exécutable."
    fi
    ```

7. **Vérifier si un fichier est vide :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du fichier : "
   read filename
   if [ -s "$filename" ]; then
       echo "Le fichier n'est pas vide."
   else
       echo "Le fichier est vide."
   fi
   ```



8. **Vérifier si un nombre est positif, négatif ou nul :**
   ```bash
   #!/bin/bash
   echo "Entrez un nombre : "
   read num
   if [ $num -gt 0 ]; then
       echo "Le nombre est positif."
   elif [ $num -lt 0 ]; then
       echo "Le nombre est négatif."
   else
       echo "Le nombre est nul."
   fi
   ```
9. **Vérifier si un nombre est pair ou impair :**
   ```bash
   #!/bin/bash
   echo "Entrez un nombre : "
   read num
   if [ $((num % 2)) -eq 0 ]; then
       echo "Le nombre est pair."
   else
       echo "Le nombre est impair."
   fi
   ```

10. **Vérifier si un nombre est un multiple de 5 :**
   ```bash
   #!/bin/bash
   echo "Entrez un nombre : "
   read num
   if [ $((num % 5)) -eq 0 ]; then
       echo "Le nombre est un multiple de 5."
   else
       echo "Le nombre n'est pas un multiple de 5."
   fi
   ```
</details>
