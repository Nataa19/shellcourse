# !/bin/bash
# Programa para ejemplificar el uso de loops anidados
# Autor: Juan Schiavoni

echo "Loops Anidados"
for fil in $(ls)
do 
    for nombre in {1..4}
    do
        echo "Nombre Archivo: $fil _ $nombre"
    done
done

