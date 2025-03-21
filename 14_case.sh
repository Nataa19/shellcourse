#!bin/bash

opcion=""

echo "Ejemplo sentancia CASE"
read -p "Ingrese una opcion de la A - Z" opcion
echo -e "\n"

case $opcion in 
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion eliminar Archivo";;
    [C-E] echo "No esta implementada la operacion" ;
    "*") "Opcion incorrecta"
esac 
