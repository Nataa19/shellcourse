# !/bin/bash
# Programa para ejemplificar el uso de arreglos
# Autor: Juan Schiavoni

arrayNum=(1 2 3 4 5 6)
arrayChar=(Juan, Nata, Tomi, Maria)
arrayRang=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arrayNum[*]}"
echo "Arreglo de Cadenas: ${arrayChar[*]}"
echo "Arreglo de Rangos: ${arrayRang[*]}"

#Imprimir tamaño de Array
echo "Tamaño Arreglo de Numeros: ${#arrayNum[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arrayChar[*]}"
echo "Tamaño Arreglo de Rangos: ${#arrayRang[*]}"

#Imprimir las posiciones 3 del array  
echo "Posicion 3 Arreglo de Numeros: ${arrayNum[3]}"
echo "Posicion 3 Arreglo de Cadenas: ${arrayChar[3]}"
echo "Posicion 3 Arreglo de Rangos: ${arrayRang[3]}"

#Añadir y eliminar valores
arrayNum[7]=20
unset arrayNum[0]
echo "Arreglo de numeros: ${arrayNum[*]}"
echo "Tamaño de arreglo Numeros: ${#arrayNum[*]}"


