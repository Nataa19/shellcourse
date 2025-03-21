# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read, $REPLY 
# Autor: Tomás Mascia - tomasgump6@gmail.com

option=0
backupname=""

echo "Programa de utilizades Postgres:"
echo -n "Ingresar una Opcion: "
read
option=$REPLY

echo -n "Ingresar el nombre del archivo del backup: "
read
backupname=$REPLY

echo "Opcion: $option , backupname: $backupname"



