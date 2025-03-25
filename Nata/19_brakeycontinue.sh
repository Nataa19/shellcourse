#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteración for
#Autor: Natanael Cantero

echo "Sentencia break y continue"
for fil in *
do
    for nombre in {1..4}
    do
        if [ $fil = "10_dowload.sh" ]; then
            break
        elif [ $fil = 4* ]; then
            continue
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done


