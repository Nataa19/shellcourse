# !/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Juan Schiavoni

echo "Escribir en un archivo"

echo "Valores escritos con echo" >> $1 

#Adicion multilinea
cat <<EOM>>$1
$2
EOM
