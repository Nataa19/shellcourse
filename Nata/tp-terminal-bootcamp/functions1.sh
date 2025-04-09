#!/bin/bash

opcion=0
o1=0
o2=0
o3=0
o4=0

if [ -d "tp-terminal-bootcamp" ]; then
    echo "El directorio ya fue creado"
else 
    mkdir $HOME/tp-terminal-bootcamp
fi

cd $HOME/tp-terminal-bootcamp

solicitar_info () {
    read -n1 -p "Ingrese la opción correspondiente: " opcion
    echo -e "\n"
}

info_o () {
    echo "Eligió la opción $1..."
    sleep 2
    echo "En el siguiente menú tendrá sub-opciones para $2"
    sleep 2
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
    sleep 1
    echo -e "\n"
}

while :
    do
        
        echo "******* Trabajo Práctico Linux y Bash *******"
        echo "************* Bienvenido $USER *************"
        echo "           Opciones disponibles:"
        echo -e "\n"
        echo "1. Actualización y limpieza del sistema"
        echo "2. Creación de directorios y respaldos"
        echo "3. Ver información del sistema"
        echo "4. Archivos y descompresión"
        echo "5. Salir"
        echo "6. Leer el Log 'linux-functions.txt'"
        echo -e "\n"
        solicitar_info
        echo -e "\n"
    
    case $opcion in
    1) 
        
        info_o "1" "limpiar y/o actualizar su sistema (Tenga en cuenta que precisará permisos de sudo)" "1. Actualizar el sistema" "2. Solicitar la lista de paquetes a actualizar" "3. Limpiar y remover los paquetes en desuso"  
        read -n1 -p "Ingrese: " o1
        echo -e "\n"
            case $o1 in
            1)funcion_ejecucion
            sudo apt update && sudo apt upgrade -y

                if sudo apt -qq -s upgrade | grep -q '0 actualizados'; then
                    echo "Sistema actualizado" | tee -a linux-functions.txt
                else
                    echo "Actualizando paquetes..."
                    (sudo apt update && sudo apt upgrade -y) | tee -a linux-functions.txt
                fi
            echo -e "\n"    
            ;;

            2)funcion_ejecucion
            sudo apt list --upgradable | tee -a linux-functions.txt
            echo -e "\n"
            ;;

            3)funcion_ejecucion
            sudo apt clean -qq && sudo apt autoremove -qq

                if sudo apt -qq autoremove | grep -q '0 para eliminar'; then
                    echo "Sistema Limpio" | tee -a linux-functions.txt
                else
                    echo "Actualizando paquetes..."
                    (sudo apt clean && sudo apt autoremove) | tee -a linux-functions.txt
                fi
            echo -e "\n"
            ;;
            esac
       ;;

    2) info_o "2" "crear directorios/carpetas y comprimidos para backups" "1. Crear una carpeta y 2 archivos txt dentro del directorio actual" "2. Crear una segunda carpeta en el directorio actual" "3. Crear un Backup de Retos en formato comprimido, moverlo a backups-bootcamp-we y descomprimirlo"
       read -n1 -p "Ingrese: " o2
       echo -e "\n"
            
            case $o2 in
                1)funcion_ejecucion
                    
                    if [ -d "linux-bootcamp-we" ]; then
                        echo "Directorio existente"
                    else
                        mkdir linux-bootcamp-we && mv linux-functions.txt linux-bootcamp-we/
                    fi

                    if [ -f "history-linux.txt" ]; then
                        echo "Archivo existente"
                    else
                        touch linux-bootcamp-we/history-linux.txt
                    fi

                echo -e "\n"
                ;;

                2)funcion_ejecucion
                    
                    if [ -d "backups-bootcamp-we" ]; then
                        echo "Directorio existente"
                    else
                        mkdir backups-bootcamp-we
                    fi
                    
                ;;

                3)funcion_ejecucion
                    
                    if [ -f "backups-bootcamp-we/bkp.tar.gz" ]; then
                        echo "Comprimido existente"
                    else
                        (tar -cvzf backups-bootcamp-we/bkp.tar.gz /home/nata/shellcourse/Nata/Retos && tar -xvzf backups-bootcamp-we/bkp.tar.gz -C backups-bootcamp-we) | tee -a linux-bootcamp-we/linux-functions.txt
                    fi

            esac
            echo -e "\n"
            ;;

    3) info_o "3" "obtener la hora del sistema, usuario, version de sistema operativo, kernel y demás" "1. Fecha y hora actual" "2. Directorio actual de trabajo" "3. Mi usuario e información Host, Kernel y Sistema Operativo" "4. Espacio disponible y en uso en el disco" "5. Mostrar los 3 procesos que mas RAM utilizan" "6. Mostrar el historial de comandos" "7. Mostrar el servidor/es que utiliza Google" 
       read -n1 -p "Ingrese: " o3
       echo -e "\n"
            
            case $o3 in
                1)funcion_ejecucion
                    date "+%d/%m/%Y %T" | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"    
                ;;

                2)funcion_ejecucion
                    pwd | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"    
                ;;

                3)funcion_ejecucion
                    (whoami && uname -a | tee -a linux-bootcamp-we/linux-functions.txt) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"    
                ;;

                4)funcion_ejecucion
                    df -h | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"
                ;;

                5)funcion_ejecucion
                    (ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"
                ;;

                6)funcion_ejecucion
                    history 20 | tee -a linux-bootcamp-we/history-linux.txt 

                ;;

                7)funcion_ejecucion
                    (ping google.com | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"
                ;;
            esac
            ;;
 
    4) info_o "4" "crear Backups, mostrar información de archivos y listar la Home." "1. Crear un comprimido de todo el directorio actual y guardarlo en 'backups-bootcamp-we'" "2. Descomprimir el archivo en la Home/Documents" "3. Mostrar el contenido de los archivos txt creados" "4. Listar el contenido de el archivo descomprimido en Home"
       read -n1 -p "Ingrese: " o4
       echo -e "\n"
            
            case $o4 in
                1)funcion_ejecucion

                    if [ -f "backups-bootcamp-we/tp-terminal-bootcamp.tar.gz" ]; then
                        echo "Comprimido existente"
                    else
                        tar -cvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz . | tee -a linux-bootcamp-we/linux-functions.txt
                    fi

                echo -e "\n"
                ;;

                2)funcion_ejecucion
                    if [ -d "$HOME/Documents" ]; then
                        tar -xvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz -C $HOME/Documents | tee -a linux-bootcamp-we/linux-functions.txt
                    else
                        tar -xvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz -C $HOME/Documentos | tee -a linux-bootcamp-we/linux-functions.txt 
                    fi   
                echo -e "\n"
                ;;

                3)funcion_ejecucion
                    (cat linux-bootcamp-we/linux-functions.txt && cat linux-bootcamp-we/history-linux.txt) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"
                ;;
                
                4)funcion_ejecucion
                    ls -l $HOME/tp-terminal-bootcamp | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"
                ;;
            esac
            ;;
    5) exit 0
    ;;
    6)
       if [ -f "linux-functions.txt" ]; then 
            cat linux-functions.txt | less    
        
       else
            cat linux-bootcamp-we/linux-functions.txt | less
       fi
    ;;
    esac
done
