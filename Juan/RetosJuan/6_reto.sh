# !/bim/bash
# Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos
# Autor: Juan Schiavoni

opcion=0

echo "Creando archivo log.."}
touch log.txt

echo "Registrando login"
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%D)

echo "$user/$date" >> log.txt

sleep 3
echo -e "\nLogin registrado"
cat log.txt

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
            zip -e log.zip log.txt 
            echo -e "\nHECHO!!!"
            host=""
            user=""
            read -p "Ingresar el host: " host
            read -p "Ingresar el ususario: " user
            echo -e "\nSe empaqueta la carpeta y se transfiere segun los datos ingresados"
            rsync -avz $(pwd) $usuario@$host:/home/juanchi
            sleep 3
            ;;
        8) 
            echo -e "\nSalir del programa."
            exit 0
            ;;
    esac
done

