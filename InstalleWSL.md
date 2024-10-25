
# Installation du sous-système Windows pour Linux

Le Sous-système Windows pour Linux (WSL) est une fonctionnalité de Windows qui vous permet d'exécuter un environnement Linux sur votre machine Windows, sans avoir besoin d'une machine virtuelle séparée ou d'un double démarrage. WSL est conçu pour offrir une expérience transparente et productive aux développeurs qui souhaitent utiliser Windows et Linux en même temps.

- Vous pouvez utilisez WSL pour installer et exécuter diverses distributions Linux, telles qu'Ubuntu, Debian, Kali, etc. Installez des distributions Linux et recevez des mises à jour automatiques à partir du Microsoft Store, importez des distributions Linux non disponibles dans le Microsoft Store ou créez votre propre distribution Linux personnalisée.

**Attention  : ce document a pour origine  [WSL](https://learn.microsoft.com/fr-fr/windows/wsl/about)**. Pour tout problème, vérifier la source.

## Installation

Ouvrez PowerShell (ou l’invite de commandes Windows) et entrez :
```powershell
wsl --install
```
La commande --install effectue les actions suivantes :

- Active les composants facultatifs de WSL et de la plateforme de machine virtuelle
- Télécharge et installe le dernier noyau Linux
- Définit WSL 2 comme valeur par défaut
- Télécharge et installe la distribution Linux Ubuntu (un redémarrage peut être nécessaire)
- Vous devez redémarrer votre machine pendant ce processus d’installation.


## Configurer votre nom d’utilisateur et votre mot de passe Linux

Une fois le processus d’installation de votre distribution Linux avec WSL terminé, ouvrez la distribution (Ubuntu par défaut) avec le menu Démarrer. Il vous sera demandé de créer un nom d’utilisateur et un mot de passe pour votre distribution Linux.

- Ce nom d’utilisateur et ce mot de passe sont propres à chaque distribution Linux distincte que vous installez et n’ont aucune incidence sur votre nom d’utilisateur Windows.

- Notez que rien ne s’affiche à l’écran quand vous entrez le mot de passe. Cela s’appelle la saisie à l’aveugle. Vous ne verrez pas ce que vous tapez, ce qui est tout à fait normal.

- Une fois que vous avez créé un nom d’utilisateur et un mot de passe, le compte devient votre utilisateur par défaut pour la distribution et se connecte automatiquement au démarrage.

- Ce compte est considéré comme l’administrateur Linux, avec la capacité d’exécuter des commandes d’administration sudo (Super User Do).

- Chaque distribution Linux exécutée sur WSL a ses propres comptes d’utilisateur et mots de passe Linux. Vous devez configurer un compte d’utilisateur Linux chaque fois que vous ajoutez, réinstallez ou réinitialisez une distribution.

- Pour modifier ou réinitialiser votre mot de passe, ouvrez la distribution Linux et entrez la commande : passwd. Vous êtes invité à entrer votre mot de passe actuel, à entrer votre nouveau mot de passe, puis à confirmer votre nouveau mot de passe.