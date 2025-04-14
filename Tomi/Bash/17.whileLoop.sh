# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Tomás Mascia - tomasgump6@gmail.com

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done

