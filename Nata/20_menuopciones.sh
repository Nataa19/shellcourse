#!/bin/bash

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "________________________________________"
    echo "    MENU PRINCIPAL      "
    echo "________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1-5]" opcion
    
    #Validar la opcion ingresada
    case $opcion in
        1)  
            echo "Instalando Postgres......"
            sleep 3
            ;;
        2) echo "Desinstalar Postgres......"
            sleep 3
            ;;
        3) echo "Sacar respaldo......."
            sleep 3
            ;;
        4) echo  "Restaurar respaldo..."
           sleep 3
           ;;
        5) echo "Salir del Programa..."
           exit 0
           ;;
    esac
done


