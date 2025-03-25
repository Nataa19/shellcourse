# !/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios
# Autor: Juan Schiavoni

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2     
    echo "Directorio creado"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado"
    ls -la $2
else
    echo "No existe la opcion: $1"
fi

