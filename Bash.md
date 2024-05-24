# Résumé des connaissances importantes sur Bash :


```bash
#Utilisez la commande :
info bash
```

---

- Rendre exécutable  :  chmod a+x script.sh
- Exécution : ./script.sh 
- Shebang : #!/bin/bash

## Variables

NOM_DE_LE_VARIABLE="valeur"
- Avec de simples quotes, la variable n'est pas analysée et le $ est affiché tel quel.
- Doubles quotes : ça fonctionne, la variable est analysée et son contenu affiché.
- Back quotes utilisé surtout avec les commandes 
exemple :


```bash
$message=`pwd`
$echo "Vous êtes dans le dossier $mesage"
Vous êtes dans le dossier /home/jpduches/scripts
```

- Lorsque vous souhaitez inclure une variable dans un mot, vous pouvez utiliser {}.

### Variables d'environnements : 
Les variables sont constituées de noms auxquels on assigne des valeurs. Ainsi, le système d'un utilisateur français devrait avoir la valeur « fr_FR.UTF-8 » assignée à la variable « LANG ».

- La commande **printenv** affiche les noms et les valeurs de toutes les variables d'environnement définies.
- Pour affecter une valeur à une variable d'environnement existante, nous utilisons une expression d'affectation. Par exemple pour assigner la valeur « fr_FR.UTF-8 » à la variable « LANG », nous utilisons la commande suivante :
```bash
LANG=fr_FR.UTF-8
```
Plus d'information : 
https://doc.ubuntu-fr.org/variables_d_environnement


### Variable de positionnement

Les variables de position stockent le contenu des différents éléments de la ligne de commande utilisée pour lancer le script.

- Il en existe 10 : $0 jusqu’à 9
- Le script lui-même est stocké dans la variable $0
- Le premier paramètre est stocké dans la variable $1
- Le second paramètre est stocké dans la variable $2
- $# : récupére le nombre de parametres (à partir de $1)
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
| --------------- |---------------:| -----|
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


---
# Référence : 
- https://www.gnu.org/software/bash/
- https://doc.ubuntu-fr.org/bash
- https://doc.ubuntu-fr.org/variables_d_environnement
