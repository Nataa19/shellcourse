#!/bin/bash
#Programa para ejemplificar la forma de como transferir por la red el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
#Autor: Natanael Cantero

echo "Empaquetar todos los scripts de la carpeta shellcouse y transferirlos por la red a otro equipo usando rsync"
read -p "Ingresar el host" host
read -p "Ingresar el usuario" usuario
echo -e "\nEn este momento se comanzara a empaquetar la carpeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home/nata
