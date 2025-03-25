# !/bin/bash
# Programa para ejemplificar el uso de la iteracion for
# Autor: Juan Schiavoni

arrayNum=(1 2 3 4 5 6)

echo "Iterar en la lista Numeros"
for num in ${arrayNum[*]}
do 
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Juan" "Nata" "Tomi" "Marisa"
do 
    echo "Nombre: $nom"
done

echo "Iterar en aechivos"
for fil in *
do 
    echo "Nombre archivo: $fil"
done

echo "Iterar usando comando"
for fil in $(ls)
do 
    echo "Nombre Archivo: $fil"
done

echo "Iterar usando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero: $i"
done
