# Corrigé

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
   ifconfig -a
   ```

10. **Supprimer un fichier :**
    ```bash
    #!/bin/bash
    echo "Entrez le nom du fichier à supprimer : "
    read filename
    rm $filename
    ```
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

