#/bin/bash

#Solicitar que se ingrese un valor del 1 al 5.

#Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.

#Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.

valor=0

read -n1 -p "Ingresá un valor del 1-5: " valor
echo -e "\n"

if [ $valor -ge 4 ]; then
    echo "Sacar un $valor es GOD"
elif [ $valor -eq 3 ]; then
    echo "Está BAH"
else
    echo "Bastante maaal"
fi
