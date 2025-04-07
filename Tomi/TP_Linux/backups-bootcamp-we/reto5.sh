# !/bin/bash
# Programa que genera un archivo log y luego escribir dentro del archivo el usuario y la fecha actual. 
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Primero generamos el archivo log"
touch log.txt

echo "Ahora se cargaran tus datos como el nombre del usuario utilizado y la fecha actual"
user=$USER
date=$(date +%Y_%m_%d__%H_%M_%S)

echo "Archivo creado por $user en la Fecha $date" >> log.txt

echo "Archivo creado con exito"
cat log.txt

#preguntar a ver si esta bien porque no entiendo el reto


