# !/bin/bash
# Programa que solicita que ingreses un entero del 1 al 5
# Autor: Tomás Mascia - tomasgump6@gmail.com

num=0

read -n1 -p "Ingrese un numero del [1-5]: " num
echo -e "\n"

if [ $num -ge 1 ] && [ $num -le 5 ]; then
    echo "El número es: $num"
else 
    echo "El número no esta en el rango indicado"
fi

