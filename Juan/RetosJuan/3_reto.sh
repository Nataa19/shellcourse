# !/bin/bash
# valor del 1 al 5
# hacer validacion de resultado
# Construir expresiones de validacion numerica cadenas y archivos segun la opcion ingresada

num=0

read -n1 -p "Ingrese un numero (1-5): " num
echo -e "\n"
if [ $num -lt 1 ] || [ $num -gt 5 ]; then
    echo "Numero incorrecto (fuera de rango)"
else
    echo "Su numero es: $num"
fi
