# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla 
# Autor: Tomás Mascia - tomasgump6@gmail.com

option=0
backupname=""
clave=""

echo "Programa de utilizades Postgres:"
# Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una Opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupname
echo -e "\n"
echo "Opcion: $option , backupname: $backupname"
read -s -p "Clave:" clave
echo "\n"
echo "Clave: $clave"

