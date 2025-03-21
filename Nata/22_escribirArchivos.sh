#!/bin/bash
#Programa para ejemplificar la creacion de archivos y directrios
#Autor: Natanael Cantero

echo "Escribir en un archivo"

echo $2 >> $1

#Adicion multilinea
cat <<EOM>>$1
$2
EOM
