# !/bin/bash
# Programa para ejemplificar eñ uso de if, else, if, else
# Autor: Juan Schiavoni

notaClase=0
edad=0

echo "Ejemplo Sentencia if - else"
read -p "Indique cual es su edad: " edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

