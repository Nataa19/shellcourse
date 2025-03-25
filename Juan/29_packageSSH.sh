# !/bin/bash
# Programa para ejemplificar la forma de enviar por la red usando rsync, con las opciones de empaquetamiento
# Autor: Juan Schiavoni

echo "Empaquetar y transferir a otro equipo"
host=""
user=""
read -p "Ingresar el host: " host
read -p "Ingresar el ususario: " user
echo -e "\nSe empaqueta la carpeta y se transfiere segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home/juanchi
