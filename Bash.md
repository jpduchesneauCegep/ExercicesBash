# Résumé des connaissances importantes sur Bash :


```bash
#Utilisez la commande :
info bash
```

---

- Rendre un script exécutable  :  chmod a+x nomScript.sh
- Exécution : ./nomScript.sh 
- Shebang : #!/bin/bash

# Variables

NOM_DE_LE_VARIABLE="valeur"
- Avec de simples quotes, la variable n'est pas analysée et le $ est affiché tel quel.
- Doubles quotes : ça fonctionne, la variable est analysée et son contenu affiché.
- Back quotes utilisé surtout avec les commandes 
exemple :


```bash
$message=`pwd`
$echo "Vous êtes dans le dossier $message"
Vous êtes dans le dossier /home/jpduches/scripts
```

- Lorsque vous souhaitez inclure une variable dans un mot, vous pouvez utiliser {}.

```bash
MACHINE=`hostname`
NOM=`user`
echo "Bonjour ${user}, bienvenue sur la machine  {$MACHINE}."
```
## Variables d'environnements : 
Les variables sont constituées de noms auxquels on assigne des valeurs. Ainsi, le système d'un utilisateur français devrait avoir la valeur « fr_FR.UTF-8 » assignée à la variable « LANG ».

- La commande **printenv** affiche les noms et les valeurs de toutes les variables d'environnement définies.
- Pour affecter une valeur à une variable d'environnement existante, nous utilisons une expression d'affectation. Par exemple pour assigner la valeur « fr_FR.UTF-8 » à la variable « LANG », nous utilisons la commande suivante :
```bash
LANG=fr_FR.UTF-8
```
Plus d'information : 
https://doc.ubuntu-fr.org/variables_d_environnement


## Variable de positionnement

Les variables de position stockent le contenu des différents éléments de la ligne de commande utilisée pour lancer le script.

- Il en existe 10 : $0 jusqu’à 9
- Le script lui-même est stocké dans la variable $0
- Le premier paramètre est stocké dans la variable $1
- Le second paramètre est stocké dans la variable $2
- $# : récupère le nombre de paramètres (à partir de $1)
- $* : récupère la liste des paramètres.

## Les tests 

```bash
[ voici-la-condition-du-test-a-vérifier ]
Il est important de respecter les espaces après le [ et aussi avant le ].

$help tests

Opérateurs principaux :
-e : (True) si le fichier existe
-d : (True) s’il s’agit d’un dossier
-r : (True) si le fichier est disponible en lecture pour l’utilisateur
-s : (True) si le fichier existe et n’est pas vide
-w : (True) si le fichier est disponible en écriture pour l’utilisateur
-x : (True) si le fichier est disponible en exécution pour l’utilisateur

```

## Test sinon si 
```bash
if [condition-est-vrai]
then
command
else
command
fi
```

### Comparaison numérique 

| Opérateur | Définition |
| --------------- |---------------| 
| -eq | est égal à |
| -ne | n'est pas égal à |
| -gt | est plus grand que |
| -ge | est plus grand ou égal à  |
| -lt | est plus petit que  |
| -le | est plus petit ou égal à |

Exemple : 
```bash
#!/bin/bash
a=2 ; b=1
if [ "$a" -gt "$b" ] ; then
	echo "$a est plus grand que $b"
fi
 
if test 100 -gt 99
then
	echo "vrai"   #réponse : vrai
else
	echo "faux"
fi    
```

## Boucles 

### for
Une boucle for en Bash permet d'exécuter un bloc de code de manière répétée pour un ensemble de valeurs définies. Elle est particulièrement utile pour automatiser des tâches répétitives.



```bash
#!/bin/bash
for i in 1 2 3 4 5
do
 echo "Hello $i"
done
```
L’exécution du fichier bash donnera le texte suivant :
```
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
```
Examinons chaque élément :

- **#!/bin/bash** – montre que le code est un script bash.
- **for** début de la boucle
- **i** – est un caractère de remplacement pour une variable. 
- **in** – sépare la variable et les éléments qui suivent.
- **1 2 3 4 5** – est un exemple d’éléments sur lesquels vous voulez exécuter l’instruction
- **do** – est le mot-clé qui déclenche les boucles. Il exécutera ensuite l’instruction n fois, n étant le nombre total d’éléments. Ici, la valeur de n est de 5.
- **echo “Hello: $i”** – est le code que nous allons répéter n fois. N’oubliez pas que les guillemets transforment tout ce qui se trouve à l’intérieur en une variable.

- done – arrête la boucle.

Il existe plusieurs autres façons de faire la boucle for. Au besoin, chercher les exemples (boucle for en bash par exemple sur Gemini).

### while

Une boucle while en Bash permet d'exécuter un bloc de code de manière répétée tant qu'une condition donnée est vraie. Elle est particulièrement utile pour des tâches qui nécessitent une répétition conditionnelle.

```bash
#!/bin/bash
while [ -z $PRENOM]
do
 read -p "Quel est votre prénom ?" PRENOM
done

echo "Votre prénom est $PRENOM"

```

## Fonctions 

Les fonctions en Bash permettent de regrouper des blocs de code réutilisables dans des scripts. Elles améliorent la lisibilité, la modularité et la maintenabilité du code.

```bash
#!/bin/bash
function nom_fonction {
  # Commandes à exécuter
}
```

```bash
#!/bin/bash
fonction internet () {
	ping - c 1 8.8.8.8 # Commende ping suivi du nombre de ping et adresse IP.

	if [ $? -eq 0 ]; then
		echo "Vous êtes connecté à internet"
	else
		echo "Vous n'êtes pas connecté à internet"
	fi
}
```

Portée des variables:

Par défaut, les variables dans une fonction sont globales, ce qui signifie qu'elles sont accessibles à la fois dans la fonction et dans le reste du script. Il est possible de déclarer des variables locales à la fonction en utilisant le mot-clé local.

---
# Référence : 
- https://www.gnu.org/software/bash/
- https://doc.ubuntu-fr.org/bash
- https://doc.ubuntu-fr.org/variables_d_environnement
