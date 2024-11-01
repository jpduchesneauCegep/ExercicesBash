#!/bin/bash
   echo "Entrez le nom du fichier : "
   read filename
   if [ -e "$filename" ]; then
       echo "Le fichier existe."
   else
       echo "Le fichier n'existe pas."
   fiS