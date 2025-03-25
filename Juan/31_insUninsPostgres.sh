# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Juan Schiavoni

opcion=0

#Funcion para instalar Postgres
instalar_postgres () {
    echo -e "\nVerificar instalacion de Postgres"
    verifyInstall=$(whinch psql)
    if [ $? -eq 0 ]; then 
        echo -e "\nPostgress ya esta instalado"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña para usar en Postgres: " passPostgress
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrlib
        sudo -u postgres psql -C "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Funcion para desinstalar Postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql

    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
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
