# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else if, else 
# Autor: Tomás Mascia - tomasgump6@gmail.com

edad=0


read -p "Ingrese su edad: " edad

if [ $edad -le 18 ]; then
    echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi


