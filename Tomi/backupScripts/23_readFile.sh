# !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacioes en blanco al inicio o al final se recortan

echo -e "\nLeer archivo linea por linea utilizando while"
while IFS=read linea
do
    echo "$linea"
done < $1

