#!/bin/bash
#Me falta: 
#Valdar la creacion de la carpeta tp-terminal al principio del script
#Validar opciones de cada case, por ej si el sistema esta actualizado que te diga "Sistema act", con un IF
#Ver porque al final del 4-3 solo me guarda ese punto en el log linux-functions.txt 
#Hacer mas clear o bucles while para mejorar la visual al ejecutar el script
#Mejorar los textos de echo

opcion=0
o1=0
o2=0
o3=0
o4=0

mkdir $HOME/tp-terminal-bootcamp
cd $HOME/tp-terminal-bootcamp

solicitar_info () {
read -n1 -p "Ingrese la opción correspondiente: " opcion
echo -e "\n"
}

info_o () {
echo "Eligió la opción $1..."
sleep 2
echo "En el siguiente menú tendrá sub-opciones para $2"
sleep 3
echo "Seleccione una opción"
echo "$3"
echo "$4"
echo "$5"
echo "$6"
echo "$7"
echo "$8"
echo "$9"
}

funcion_ejecucion () {
echo "Ejecutando..."
sleep 2
echo -e "\n"
}

while :
do
echo "*******Trabajo Práctico Linux y Bash*******"
echo "*************Bienvenido $USER*************"
echo "           Opciones disponibles:"
echo -e "\n"
echo "1. Actualización y limpieza del sistema"
echo "2. Creación de directorios y respaldos"
echo "3. Ver información del sistema"
echo "4. Archivos y descompresión"
echo "5. Salir"
echo -e "\n"
solicitar_info

    case $opcion in
    1) info_o "1" "limpiar y/o actualizar su sistema (Tenga en cuenta que precisará permisos de sudo)" "1. Actualizar el sistema" "2. Solicitar la lista de paquetes a actualizar" "3. Limpiar y remover los paquetes en desuso"  
       read -n1 -p "Ingrese: " o1
       echo -e "\n"
       case $o1 in
       1)funcion_ejecucion
       (sudo apt update && sudo apt upgrade -y) | tee -a linux-functions.txt
       ;;
       2)funcion_ejecucion
       sudo apt list --upgradable | tee -a linux-functions.txt
       ;;
       3)funcion_ejecucion
       (sudo apt clean && sudo apt autoremove) | tee -a linux-functions.txt
       ;;
       esac
       ;;

    2) info_o "2" "crear directorios/carpetas y comprimidos para backups" "1. Crear una carpeta y 2 archivos txt dentro del directorio actual" "2. Crear una segunda carpeta en el directorio actual" "3. Crear un Backup de Retos en formato comprimido, moverlo a backups-bootcamp-we y descomprimirlo"
       read -n1 -p "Ingrese: " o2
       case $o2 in
       1)funcion_ejecucion
       mkdir linux-bootcamp-we && mv linux-functions.txt linux-bootcamp-we/ && touch linux-bootcamp-we/history-linux.txt 
       ;;
       2)funcion_ejecucion
       mkdir backups-bootcamp-we
       ;;
       3)funcion_ejecucion
       (tar -cvzf backups-bootcamp-we/bkp.tar.gz /home/nata/shellcourse/Nata/Retos && tar -xvzf backups-bootcamp-we/bkp.tar.gz -C backups-bootcamp-we) | tee -a linux-bootcamp-we/linux-functions.txt
       esac
       ;;

    3) info_o "3" "obtener la hora del sistema, usuario, version de sistema operativo, kernel y demás" "1. Fecha y hora actual" "2. Directorio actual de trabajo" "3. Mi usuario e información Host, Kernel y Sistema Operativo" "4. Espacio disponible y en uso en el disco" "5. Mostrar los 3 procesos que mas RAM utilizan" "6. Mostrar el historial de comandos" "7. Mostrar el servidor/es que utiliza Google" 
       read -n1 -p "Ingrese: " o3
       case $o3 in
       1)funcion_ejecucion
       date "+%d/%m/%Y %T" | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       2)funcion_ejecucion
       pwd | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       3)funcion_ejecucion
       (whoami && uname -a | tee -a linux-bootcamp-we/linux-functions.txt) | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       4)funcion_ejecucion
       df -h | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       5)funcion_ejecucion
       (ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       6)funcion_ejecucion
       (history > linux-bootcamp-we/history-linux.txt) | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       7)funcion_ejecucion
       (ping google.com | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       esac
       ;;
 
    4) info_o "4" "crear Backups, mostrar información de archivos y listar la Home." "1. Crear un comprimido de todo el directorio actual y guardarlo en 'backups-bootcamp-we'" "2. Descomprimir el archivo en la Home/Documents" "3. Mostrar el contenido de los archivos txt creados" "4. Listar el contenido de el archivo descomprimido en Home"
       read -n1 -p "Ingrese: " o4
       case $o4 in
       1)funcion_ejecucion
       tar -cvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz . | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       2)funcion_ejecucion
       tar -xvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz -C $HOME/Documents | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       3)funcion_ejecucion
       (cat linux-bootcamp-we/linux-functions.txt && cat linux-bootcamp-we/history-linux.txt) | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       4)funcion_ejecucion
       ls -l $HOME/tp-terminal-bootcamp | tee -a linux-bootcamp-we/linux-functions.txt
       ;;
       esac
       ;;
    5) exit 0
    ;;
    esac
done
