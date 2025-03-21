# !/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro qeuipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el Host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nEn este momento se procedera a empaquetar la capeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home
