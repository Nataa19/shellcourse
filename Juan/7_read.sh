# !/bin/bash
# Programa para ejemplificar como capturar la info del ususario utilizando read
# Autor: Juanchi Schiavoni

option=0
backupName=""

echo "Programa utilidades Postgres"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opcion: $option , backupname: $backupName"
