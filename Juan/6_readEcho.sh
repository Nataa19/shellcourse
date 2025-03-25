# !/bin/bash
# Programa para ejemplificar como capturar la info del ususario utilizando echo read y $REPLY
# Autor: Juanchi Schiavoni

option=0
backupName=""

echo "Programa utilidades Postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opcion: $option , backupname: $backupName"
