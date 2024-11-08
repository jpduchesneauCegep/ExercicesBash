# Résumé des connaissances importantes sur Bash :


```bash
#Utilisez la commande :
info bash
# sans oublié les pages man
```

---

- Rendre un script exécutable  :  chmod a+x nomScript.sh
- Exécution : ./nomScript.sh 
- Shebang : #!/bin/bash

## Variables

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

- Lorsque vous souhaitez inclure une variable dans un mot, vous pouvez utiliser () ou {}.
- Accolades: Évaluation séquentielle, utile pour des expressions complexes.
- Parentheses:  Groupement de commandes ou expressions pour une exécution en bloc.


```bash
MACHINE=`hostname`
NOM=`user`
echo "Bonjour ${user}, bienvenue sur la machine  {$MACHINE}."
```
2ième exemple  
```bash
 #!/bin/bash

# Définir la variable non
nom="Alphonse Desjardins"


# Calculer l'âge en utilisant date et soustraction
age=$(($(date '+%Y')-1854))

# Utiliser les accolades pour une expression séquentielle
message="Bonjour, ${nom}, Vous avez ${age} ans!"

echo $message
```
> Attention au nom des variables !

- Les variables ne peuvent pas commencer par un chiffre mais peuvent
en contenir.
    - Exemple : 1BONNEVARIABLE n'est pas un bon nom
    - Exemple : UNEBONNE7VARIABLE est un nom correct
- Les variables ne peuvent pas contenir de tiret (-)
    - Exemple : UNE-BONNE-VARIABLE n'est pas un bon nom
    - Exemple : UNE_BONNE_VARIABLE est un nom correct
- Les variables ne peuvent contenir que des underscores, majuscules,
minuscules et chiffres :
    - Exemple : UNE_BONNE@VARIABLE n'est pas un bon nom
    - Exemple : Une_bonne_7_variable est un nom correct

### Variables d'environnement
Les variables sont constituées de noms auxquels on assigne des valeurs. Ainsi, le système d'un utilisateur français devrait avoir la valeur « fr_FR.UTF-8 » assignée à la variable « LANG ».

- La commande **printenv** affiche les noms et les valeurs de toutes les variables d'environnement définies.
- Pour affecter une valeur à une variable d'environnement existante, nous utilisons une expression d'affectation. Par exemple pour assigner la valeur « fr_FR.UTF-8 » à la variable « LANG », nous utilisons la commande suivante :
```bash
LANG=fr_FR.UTF-8
```
Plus d'information : 
https://doc.ubuntu-fr.org/variables_d_environnement

---
2e cours sur Bash
### Variables de positionnement

Les variables de position stockent le contenu des différents éléments de la ligne de commande utilisée pour lancer le script.

- Il en existe 10 : $0 jusqu’à 9
- Le script lui-même est stocké dans la variable $0
- Le premier paramètre est stocké dans la variable $1
- Le second paramètre est stocké dans la variable $2
- $# : récupère le nombre de paramètres (à partir de $1)
- $* : récupère la liste des paramètres.

## Calcule
Les expression arithmétique entre doubles parenthèses
(( )):

```bash
#!/bin/bash
# Addition
resultat=$(( 5 + 3 ))
echo "5 + 3 = $resultat"

# Soustraction
resultat=$(( 10 - 4 ))
echo "10 - 4 = $resultat"

# Multiplication
resultat=$(( 6 * 7 ))
echo "6 * 7 = $resultat"

# Division
resultat=$(( 20 / 4 ))
echo "20 / 4 = $resultat"

# Modulo
resultat=$(( 17 % 5 ))
echo "17 % 5 = $resultat"
```
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

### Test sinon si 
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
function internet () {
	ping - c 1 8.8.8.8 # Commende ping suivi du nombre de ping et adresse IP.

	if [ $? -eq 0 ]; then
		echo "Vous êtes connecté à internet"
	else
		echo "Vous n'êtes pas connecté à internet"
	fi
}


internet
```
<details>
Ce script Bash permet de vérifier si un ordinateur est connecté à Internet. Il utilise la commande ping et teste la connectivité vers l'adresse IP de Google DNS (8.8.8.8).

**Décomposition du code:**

- **Ligne 1:** ­<code>#!/bin/bash­</code> : Cette ligne indique au système d'exploitation quel interpréteur de commandes utiliser pour exécuter le script. Dans ce cas, il s'agit de /bin/bash.

- **Ligne 3:** <code>fonction internet () </code>: Cette ligne définit une fonction nommée internet. Les fonctions en Bash permettent de regrouper des blocs de code réutilisables.

- **Lignes 4-5:** <code>ping -c 1 8.8.8.8</code> : Cette ligne exécute la commande ping pour envoyer un paquet ICMP à l'adresse IP 8.8.8.8. L'option -c 1 indique qu'un seul paquet doit être envoyé.

- **Ligne 6:** <code>if [ $? -eq 0 ]; then</code> : Cette ligne débute un bloc if qui vérifie le code de retour de la commande ping. Si le code de retour est 0, cela signifie que le ping a réussi et que la connexion Internet est probablement active.

- **Ligne 7:** <code> echo "Vous êtes connecté à internet"</code> : Si le ping a réussi, cette ligne affiche le message "Vous êtes connecté à internet".

- **Ligne 8:** <code>else</code> : Cette ligne débute un bloc else qui s'exécute si le code de retour de la commande ping n'est pas 0. Cela signifie que le ping a échoué et que la connexion Internet est probablement inactive.

- **Ligne 9:** <code>echo "Vous n'êtes pas connecté à internet" </code>: Si le ping a échoué, cette ligne affiche le message "Vous n'êtes pas connecté à internet".

- **Ligne 10:** <code>fi</code> : Cette ligne marque la fin du bloc if/else.

En résumé, ce script Bash simple utilise la commande ping pour vérifier la connectivité Internet et affiche un message correspondant au résultat du test.
</details>

Portée des variables:

Par défaut, les variables dans une fonction sont globales, ce qui signifie qu'elles sont accessibles à la fois dans la fonction et dans le reste du script. Il est possible de déclarer des variables locales à la fonction en utilisant le mot-clé local.

---
## Référence : 
- https://www.gnu.org/software/bash/
- https://doc.ubuntu-fr.org/bash
- https://doc.ubuntu-fr.org/variables_d_environnement
