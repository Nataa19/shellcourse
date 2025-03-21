# !/bin/bash
# Crear menu
#   1. Procesos Actuales,
#   2. Memoria Disponible,
#   3. Espacio en Disco,
#   4. Información de Red,
#   5. Variables de Entorno Configuradas,
#   6. Información Programa
#   7. Backup información
#   8. Ingrese una opción.
#Posterior a esto vamos  a recuperar la opción ingresada, validarla e imprimir la opción y el título de acuerdo a lo ingresado
#Autor: Juan Schiavoni

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar menu de opciones
    echo "__________________________________________"
    echo "    PROGRAMA DE VALIDACION DE RECURSOS    "
    echo "__________________________________________"  
    echo "              MENU PRINCIPAL              "
    echo "__________________________________________"  
    echo "1.  Procesos Actuales"
    echo "2.  Memoria Disponible"
    echo "3.  Espacio en Disco"
    echo "4.  Informacion de Red"
    echo "5.  Variables de Entorno Configuradas"
    echo "6.  Informacion de Programa"
    echo "7.  Backup Informacion"
    echo "8.  Salir"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1 - 8]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo -e "\nProcesos Actuales..."
            ps aux
            sleep 3
            ;;
        2)
            echo -e "\nMemoria Disponible..."
            free
            sleep 3
            ;;
        3)
           echo -e "\nEspacio en Disco..."
           df -h
           sleep 3
            ;;
        4)
            echo -e "\nInformacion de red..."
            ifconfig -a
            sleep 3
            ;;
        5) 
            echo -e "\nVariables de Entorno Configuradas..."
            #printenv
            env -u VAR
            sleep 3
            ;;
        6) 
            echo -e "\nInformacion del Programa..."
            dpkg -l | more
            sleep 3
            ;;
        7) 
            echo -e "\nBackup Informacion..."
            tar -czvf backup.tar.gz
            echo -e "\nHECHO!!!"
            sleep 3
            ;;
        8) 
            echo -e "\nSalir del programa."
            exit 0
            ;;
    esac
done
