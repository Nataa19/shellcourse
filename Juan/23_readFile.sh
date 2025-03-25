# !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Juan Schiavoni

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco se recorten al inicio o final
echo -e "\nLeer archivos linea por linea usando while"
while IFS= read linea 
do
    echo "$linea"
done < $1
