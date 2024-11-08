#!/bin/bash

# Définir la variable non
nom="Alphonse Desjardins"

# Utiliser les accolades pour une expression séquentielle
# Calculer l'âge en utilisant date et soustraction
age=$(($(date '+%Y')-1854))
message="Bonjour, ${nom}, Vous avez ${age} ans!"

echo $message