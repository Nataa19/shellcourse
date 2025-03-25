# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Juan Schiavoni

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad " edad
read -p "Ingrese su pais " pais
read -p "Ingrese el path de si archivo " pathArchivo

echo -e "\nExoresiones Condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es un adolescente"
else 
    echo "La persona es mayor de edad"
fi


echo -e "\nExoresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es Sudamericano"
else 
    echo "Se descpmpce la nacionalidad"
fi


echo -e "\nExoresiones Condicionales con Archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

