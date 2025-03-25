# !/bin/bash
# Programa para ejemplificar el uso de if, else
# Autor: Juan Schiavoni

notaClase=0
edad=0

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else 
    echo "El alumno reprueba la materia"
fi
echo -e "\n"
read -p "Indique cual es su edad: " edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi

