# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else 
# Autor: Tomás Mascia - tomasgump6@gmail.com

notaClase=0
edad=0

echo "Ejemplo sentencia if - Else"
read -n1 -p "Indique cual es su nota (1-9):" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Ingrese su edad: " edad

if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi


