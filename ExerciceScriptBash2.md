# Exercice 12 - Script à vous de jouer


Jean-Pierre Duchesneau, Cégep Sainte-Foy, DFCSAE, Automne 2024

---


**Travail individuel.**

**Durée** : 2 heures

**Système d'exploitation**: Ubuntu 24.04 ou un autre OS ayant Bash.

**Référence pour l'exercice** : Note du cours et ce résumé [bash](Bash.md).

**Évaluation** : formative, aucun document à remettre. Vous aurez le corrigé au prochain cours.

**Compétences ciblés** : 

- OOQ1 -4 : Effectuer des tâches de gestion du système d'exploitation  :
  - S'initier aux commandes de base du SHELL
  - Utiliser des scripts avec le SHELL Bash
  - Programmer, tester et déboguer des scripts
    
# Exercice  - Script bash 2 


## Réaliser les scripts suivants

** Attention : n'oubliez pas de donner les droits d'exécution sur les scripts (chmod a+x)**

## Exercices pour débutants en code Bash:

1. **Afficher un message de bienvenue :**
   Écrivez un script qui affiche un message de bienvenue lorsque vous l'exécutez.

2. **Afficher la date et l'heure :**
   Écrivez un script qui affiche la date et l'heure actuelles lorsque vous l'exécutez.

3. **Afficher la liste des fichiers dans un répertoire :**
   Écrivez un script qui affiche la liste des fichiers dans le répertoire où il se trouve.

4. **Calculer la somme de deux nombres :**
   Écrivez un script qui demande à l'utilisateur deux nombres, puis affiche leur somme.

5. **Afficher les informations sur le système :**
   Écrivez un script qui affiche des informations sur le système, telles que le nom de l'utilisateur, l'architecture du processeur, etc.

6. **Créer un répertoire :**
   Écrivez un script qui demande à l'utilisateur un nom de répertoire, puis crée ce répertoire s'il n'existe pas déjà.

7. **Afficher les variables d'environnement :**
   Écrivez un script qui affiche les variables d'environnement de la session en cours.

8. **Copier un fichier :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier existant, puis copie ce fichier dans un autre répertoire.

9. **Afficher les interfaces réseau :**
   Écrivez un script qui affiche les interfaces réseau disponibles sur le système.

10. **Supprimer un fichier :**
    Écrivez un script qui demande à l'utilisateur le nom d'un fichier existant, puis le supprime.

Ces exercices devraient fournir une bonne base pour commencer à pratiquer le code Bash sans utiliser d'instructions conditionnelles. 


**Pour avoir la solution aux exercices précédents , cliquer sur la flèche avant le mot Détail.**
<details>l


-1 **Afficher un message de bienvenue :**
   ```bash
   #!/bin/bash
   echo "Bienvenue dans mon script Bash !"
   ```

2. **Afficher la date et l'heure :**
   ```bash
   #!/bin/bash
   date
   ```

3. **Afficher la liste des fichiers dans un répertoire :**
   ```bash
   #!/bin/bash
   ls
   ```

4. **Calculer la somme de deux nombres :**
   ```bash
   #!/bin/bash
   echo "Entrez le premier nombre : "
   read num1
   echo "Entrez le deuxième nombre : "
   read num2
   sum=$((num1 + num2))
   echo "La somme est : $sum"
   ```

5. **Afficher les informations sur le système :**
   ```bash
   #!/bin/bash
   echo "Nom de l'utilisateur : $USER"
   echo "Architecture du processeur : $(uname -m)"
   ```

6. **Créer un répertoire :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du répertoire : "
   read dirname
   mkdir -p $dirname
   ```

7. **Afficher les variables d'environnement :**
   ```bash
   #!/bin/bash
   printenv
   ```

8. **Copier un fichier :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom du fichier à copier : "
   read filename
   echo "Entrez le répertoire de destination : "
   read destdir
   cp $filename $destdir
   ```

9. **Afficher les interfaces réseau :**
   ```bash
   #!/bin/bash
   ip a
   ```

10. **Supprimer un fichier :**
    ```bash
    #!/bin/bash
    echo "Entrez le nom du fichier à supprimer : "
    read filename
    rm $filename
    ```


</details>

## Exercice avec la structure de contrôle si :

1. **Vérifier si un fichier existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier existe ou non.

2. **Vérifier si un répertoire existe :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire existe ou non.

3. **Vérifier si un nombre est positif, négatif ou nul :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est positif, négatif ou nul.

4. **Vérifier si un utilisateur existe :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur existe sur le système.

5. **Vérifier si un fichier est vide :**
   Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier est vide ou non.

6. **Vérifier si un nombre est pair ou impair :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est pair ou impair.

7. **Vérifier si un répertoire est vide :**
   Écrivez un script qui demande à l'utilisateur le nom d'un répertoire, puis affiche un message indiquant si le répertoire est vide ou non.

8. **Vérifier si un utilisateur est connecté :**
   Écrivez un script qui demande à l'utilisateur de saisir un nom d'utilisateur, puis vérifie si cet utilisateur est actuellement connecté.

9. **Vérifier si un nombre est un multiple de 5 :**
   Écrivez un script qui demande à l'utilisateur de saisir un nombre, puis affiche un message indiquant si le nombre est un multiple de 5 ou non.

10. **Vérifier si un fichier est exécutable :**
    Écrivez un script qui demande à l'utilisateur le nom d'un fichier, puis affiche un message indiquant si le fichier est exécutable ou non.

Ces exercices permettre  de pratiquer l'utilisation de l'instruction conditionnelle `if` en Bash.


Voici les réponses aux scripts correspondant aux exercices précédents :

<details>


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

3. **Vérifier si un nombre est positif, négatif ou nul :**
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
   ```

5. **Vérifier si un fichier est vide :**
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

6. **Vérifier si un nombre est pair ou impair :**
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

7. **Vérifier si un répertoire est vide :**
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

8. **Vérifier si un utilisateur est connecté :**
   ```bash
   #!/bin/bash
   echo "Entrez le nom d'utilisateur : "
   read username
   if who | grep -q "^$username "; then
       echo "$username est connecté."
   else
       echo "$username n'est pas connecté."
   fi
   ```

9. **Vérifier si un nombre est un multiple de 5 :**
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

10. **Vérifier si un fichier est exécutable :**
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
</details>
