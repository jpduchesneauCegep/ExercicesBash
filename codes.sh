#!/bin/bash

HOTE=$1
NOMBRE_DE_PAQUETS=$2
ping –c $NOMBRE_DE_PAQUETS $HOTE

if [ "$?" -ne "0" ]
then
  echo "L’hote $HOTE n’est pas joignable "
else
  echo "L'hote $HOTE est joignable"
fi
