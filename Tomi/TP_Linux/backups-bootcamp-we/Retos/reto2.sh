# !/bin/bash
# Programa que va a solicitar informacion del usuario y luego va a imprimirla indicando cada tipo

name=""
lastname=""
age=0
direc=""
tel=0

read -p "Ingrese Nombre: " name
echo -e 
read -p "Ingrese Apellido: " lastname
echo -e 
read -n2 -p "Ingrese Edad: " age
echo -e "\n"
read -p "Ingrese Direccion: " direc
echo -e 
read -n10 -p "Ingrese Telefono: " tel

echo -e "\n"

echo "Nombre: $name"
echo "Apellido: $lastname"
echo "Edad: $age"
echo "Direccion: $direc"
echo "Telefono: $tel"


