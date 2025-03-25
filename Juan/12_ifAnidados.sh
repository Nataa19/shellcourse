# !/bin/bash
# Programa para ejemplificar el uso de if anidados
# Autor: Juan Schiavoni

notaClase=0
contiua=""

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Va a continuar estuadiando en el siguiente nivel? (s/n) " continua
    if [ $continua == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else 
        echo "gracias por trabajar con nosotros, muhca suerte!!"
    fi
else 
    echo "El alumno reprueba la materia"
fi

