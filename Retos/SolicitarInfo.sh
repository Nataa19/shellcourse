#!/bin/bash
#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.

nombre=""
apellido=""
edad=0
direccion=""
numero_cel=0

echo "Ingrese datos personales"
read -p "Ingrese su nombre: " nombre
echo -e "\n"
read -p "Ingrese su Apellido: " apellido
echo -e "\n"
read -p "Ingrese su Edad: " edad
echo -e "\n"
read -p "Ingrese su Direccion: " direccion
echo -e "\n"
read -p "Ingrese su Cel: " numero_cel

echo "Nombre: $nombre"
echo "Apellido: $apellido"
echo "Edad: $edad"
echo "Direccion: $direccion"
echo "Numero de Celular: $numero_cel"
