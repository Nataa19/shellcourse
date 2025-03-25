# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Juan Schiavoni

opcion=0

#Funcion para instalar Postgres
instalar_postgres () {
    echo "Instalar Postgres..."
}

#Funcion para desinstalar Postgres
desinstalar_postgres () {
    echo "Desinstalar Postgres..."
}

#Funcion para sacar respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directoeio Backup: $1"
}

#Funcion para restaurar respaldo 
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directoeio respaldo: $1"
}

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar menu de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "_________________________________________"  
    echo "              MENU PRINCIPAL             "
    echo "_________________________________________"  
    echo "1.  Instalar Postgres"
    echo "2.  Desinstalar Postgres"
    echo "1.  Sacar un respaldo"
    echo "1.  Restaurar respaldo"
    echo "1.  Salir"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1 - 5]: " opcion

    #Validar la opcion ingresada
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
            read -p "Directorio Bsckup: " directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4)
            read -p "Directorio Respaldo: " directorioRespaldo
            restaurar_respaldo $directorioRespaldo
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa."
            exit 0
            ;;
    esac
done
