# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done
