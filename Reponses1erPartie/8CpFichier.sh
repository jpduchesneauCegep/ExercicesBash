   #!/bin/bash
   echo "Entrez le nom du fichier à copier : "
   read filename
   echo "Entrez le répertoire de destination : "
   read destdir
   cp $filename $destdir