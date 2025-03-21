# !/bin/bash
# Solicitar nombre, apellido, edad, direccion, numero tel e imprimir

nombre=""
apellido=""
edad=0
direccion=""
num=""

echo "Programa para ingresar datos personales"
echo -e "\n"
read -p "Nombre: " nombre
read -p "Apellido: " apellido
read -p "Edad: " edad
read -p "Direccion: " direccion
read -p "Numero de telefono: " num
echo -e "\n"
echo "Nombre: $nombre"
echo "Aoellido: $apellido"
echo "Edad: $edad"
echo "Direccion: $direccion"
echo "Numero de telefono: $num"
