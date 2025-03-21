# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read 
# Autor: Tomás Mascia - tomasgump6@gmail.com

option=0
backupname=""

echo "Programa de utilizades Postgres:"
read -p "Ingresar una Opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupname
echo "Opcion: $option , backupname: $backupname"



