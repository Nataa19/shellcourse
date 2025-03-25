# !/bim/bash
# Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos
# Autor: Juan Schiavoni

echo "Creando archivo log.."}
touch log.txt

echo "Registrando login"
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%D)

echo "$user/$date" >> log.txt

sleep 3
echo -e "\nLogin registrado"
cat log.txt
