# !/bin/bash
# Programa para ejemplificar el uso de la iteracion while
# Autor: Juan Schiavoni

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero +1 ))
done
