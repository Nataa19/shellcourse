!#/bin/bash
#Programa que permite manejar las utilidades de Postres
#Autor: Natanael Cantero
opcion=0

#Función para instalar postgres
instalar_postgres () {
    echo "Instalar postgres..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postres..."
}

#Función para sacar un respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio backup: $1"
}

#Función para restaurar un respaldo
restaurarrespaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "__"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "__"
    echo "                MENÚ PRINCIPAL           "
    echo "__"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldos:" directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done
