# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: Natanael Cantero

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9):" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

echo -e "\n"
read -n2 -p "Indique cúal es su edad:" edad
echo -e "\n"
if [ $edad -le 17 ]; then
    echo "La persona no puede sufragar"
else
    echo "La persona puede sufragar"
fi
