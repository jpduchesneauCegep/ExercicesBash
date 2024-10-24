# Exercice 11 - Script bash pas-à-pas


Jean-Pierre Duchesneau, Cégep Sainte-Foy, DFCSAE, Automne 2024

---


**Travail individuel.**

**Durée** : 2 heures

**Système d'exploitation**: Ubuntu 24.04 ou un autre OS ayant Bash.

**Référence pour l'erxercice** : Note du cours et ce résumé [bash](Bash.md).

**Évaluation** : formative, aucun document à remettre. Vous aurez le corrigé au prochain cours.

**Compétences ciblés** : 

- OOQ1 -4 : Effectuer des tâches de gestion du système d'exploitation  :
  - S'initier aux commandes de base du SHELL
  - Utiliser des scripts avec le SHELL Bash
  - Programmer, tester et déboguer des scripts
    

---
### Prérequis
  - Créer un  dépôt sur GitHub pour l'exercice. Nom sugérer : **420-W12-SF-Module4-Script**
  - Ajouter un fichier readme lors de la création.
  - Faite un clone de votre dossier sur votre poste Ubuntu 24.04 dans votre dossier $USER/Document/
  - Déplacer vous avec votre Bash dans votre nouveau dossier
  - Voici les commandes que vous aurez à taper :

 **Attention : N'utilisez jamais le copier/coller, cette technique ne vous fait pas comprendre ce que vous faite. ** 

```bash
cd  # Vous assurez d'être dans votre $HOME
pwd # vérifier que vous êtes la racine de votre répertoire d'usager
cd Documents
git clone [Le nom de votre dépôt git]
cd [Le nom de votre dépôt git]
ll #ou
ls -al 
# Vous devriez voir votre fichier readme. Si oui, tout est fonctionnel pour faire votre exercice 11 et ainsi, garder vos fichiers des exercices sur votre GitHub.
mkdir exercice11
cd exercice11
```
 **Attention : Ce qui est entre crochet doit être remplacés par vos informations. Ne conservez pas les crochets.** 
## Script 1 

### Espace disque

1- Nous allons d'abord faire un script  bash qui va nous permettre de vérifier l'espace de chacune des partitions de votre disque dur.


- Nous allons d'abord vérifier le nom des partitions à partir de la commande df -H que vous avez déjà utilisé dans le travail pratique d'installation de Linux. 
```bash
df -H
```
- Prenez en note le nom des vos disques dur, soit /dev/sd (En mode MBR) ou  /dev/vd (En mode GPT).
- Maintenant, créer le script bash suivant à l'aide de l'éditeur de texte de votre choix. Si vous ne savez pas lequel utilisé, utilisez nano : 
```bash
nano scrip1Espace.sh
```


 Nous donnons ici l'extension  .sh au fichier. On le fait par convention pour indiquer que c'est un script Shell, mais ce n'est pas une obligation. 

Voici le code : 

**Attention** :  à la première ligne script, n'oubliez pas de préciser le shebang: 

```bash
#!/bin/bash
FICHIER="espaceDisque.txt"

date >> $FICHIER
df -H | grep /dev/sd >> $FICHIER
# Attention modifier au besoin en fonction de votre sortie à la commande df -H

cat $FICHIER
```
- Sauvegardez votre fichier en tapant sur Crtl+X et répondez Yes
- Faite la commande suivante pour rendre le script bash exécutable : 

```bash
# Ajouter les droits d'exécution sur le fichier :
$chmod u+x espace.sh
#Vérifier les droits d'exécution sur le fichier :
$ls -l
# et maintenant, pour exécuter votre script bash :
./espace.sh
# Vérifier la présence du nouveau fichier "espaceDisque.txt":
ls -l
```
Question 1 : Expliquer chaque ligne de votre script.

Question 2 : Qu'est-ce qui arrive si vous exécutez plusieurs fois le script ?

Question 3 : Qu'elle est l'intérêt d'utiliser ce script plutôt que la commande df -H régulièrement ?

## Script 2

A partir de ce que vous avez appris dans la conception du script1, essayer de faire un script qui vous donne les informations sur les dix derniers usagers  du système en date d'exécution du script. Voici les informations qui vous sont fournies. Vous avez le man des commandes pour vous aider.
 
 - Nom du script : Script2Usager.sh
 - Commande nécessaire dans le script : tail, ls -l.
 - Fichier de sortie : usager.txt
 - Fichier vous permettant d'avoir les usagers : /etc/passwd

## Script 3
### read : demander une saisie


Vous pouvez demander à l'utilisateur du script de saisir du texte avec la commande read. Ce texte sera immédiatement stocké dans une variable.

La commande read propose plusieurs options intéressantes. La façon la plus simple de l'utiliser est d'indiquer le nom de la variable dans laquelle le message saisi sera stocké :

```bash
read nomvariable
```
Exemple en ligne de commande, à modifier avec vos informations : 

```bash
jpduches@DFCSAE-95871-JPDUCHESNEAU:~$ read nom
"Jean-Pierre Duchesneau"
jpduches@DFCSAE-95871-JPDUCHESNEAU:~$ echo "Bonjour $nom !"
Bonjour "Jean-Pierre Duchesneau" !
jpduches@DFCSAE-95871-JPDUCHESNEAU:~$
```
Créons un script Script3bonjour.sh pour qu'il nous demande notre nom puis qu’il nous l'affiche :
```bash
nano Script3bonjour.sh
```
Contenu du script : 
```bash
#!/bin/bash

read nom
echo "Bonjour $nom !"
```
***Attention, suivez les étapes vues au script1  pour les droits et lancez le script.***

Lorsque vous lancez ce script, rien ne s'affiche, mais si vous tapez du texte (votre nom, par exemple) le résultat va s'afficher.

![Exécution du script par le professeur](images/script2.jpg)


On peut demander de saisir autant de variables d'affilée que l'on souhaite. Voici un exemple de ce qu'il est possible de faire :


```bash
#!/bin/bash

read NOM PRENOM
echo "Bonjour $PRENOM $NOM !"
```


On est d'accord, ça manque d'information c'est ce que vas permettre l'option -p : afficher un message de prompt : 
```bash
#!/bin/bash


read -p 'Entrez votre nom : " NOM PRENOM 
echo "Bonjour $PRENOM $NOM !"
```


**Exécution de débogage**


Plus tard, vous ferez probablement de gros scripts et risquerez de rencontrer des bogues. Il faut donc dès à présent que vous sachiez comment déboguer un script.


Il faut l'exécuter comme ceci :


```bash
$bash -x script3Bonjour.sh
```
On appelle en fait directement le programme bash et on lui ajoute en paramètre un -x (pour lancer le mode débogage) ainsi que le nom de notre script à déboguer.


Le Shell affiche alors le détail de l'exécution de notre script, ce qui peut nous aider à retrouver la cause de nos erreurs.



