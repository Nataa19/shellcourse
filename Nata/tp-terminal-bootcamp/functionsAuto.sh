#!/bin/bash

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
        echo "5. Leer el Log 'linux-functions.txt'"
        echo "6. Salir"
        echo -e "\n"
        solicitar_info
        echo -e "\n"

        case $opcion in

        1)funcion_ejecucion
           
            sudo apt update && sudo apt upgrade -y | tee -a linux-functions.txt

                if sudo apt -qq -s upgrade | grep -q '0 actualizados'; then
                    echo "Sistema actualizado" | tee -a linux-functions.txt
                else
                    echo "Actualizando paquetes..."
                    (sudo apt update && sudo apt upgrade -y) | tee -a linux-functions.txt
                fi
            echo -e "\n"    

            sudo apt list --upgradable | tee -a linux-functions.txt
            echo -e "\n"

            sudo apt clean -qq && sudo apt autoremove -qq

                if sudo apt -qq autoremove | grep -q '0 para eliminar'; then
                    echo "Sistema Limpio" | tee -a linux-functions.txt
                else
                    echo "Actualizando paquetes..."
                    (sudo apt clean && sudo apt autoremove) | tee -a linux-functions.txt
                fi
            echo -e "\n"
            
        ;;

        2)funcion ejecucion
            
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

             if [ -d "backups-bootcamp-we" ]; then
                        echo "Directorio existente"
                    else
                        mkdir backups-bootcamp-we
                    fi

              if [ -f "backups-bootcamp-we/bkp.tar.gz" ]; then
                        echo "Comprimido existente"
                    else
                        (tar -cvzf backups-bootcamp-we/bkp.tar.gz /home/nata/shellcourse/Nata/Retos && tar -xvzf backups-bootcamp-we/bkp.tar.gz -C backups-bootcamp-we) | tee -a linux-bootcamp-we/linux-functions.txt
                    fi

              echo -e "\n"

              ;;

        3)funcion_ejecucion
            
            date "+%d/%m/%Y %T" | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            pwd | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            (whoami && uname -a | tee -a linux-bootcamp-we/linux-functions.txt) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            df -h | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            (ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            if [ -f "linux-bootcamp-we/history-linux.txt" ]; then
                        history 20 >> linux-bootcamp-we/history-linux.txt
                    else
                        continue
                    fi
            
            (ping google.com | head -n 4) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            ;;

        4)funcion_ejecucion

            if [ -f "backups-bootcamp-we/tp-terminal-bootcamp.tar.gz" ]; then
                        echo "Comprimido existente"
                    else
                        tar -cvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz . | tee -a linux-bootcamp-we/linux-functions.txt
                    fi

                echo -e "\n"

            if [ -d "$HOME/Documents" ]; then
                        tar -xvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz -C $HOME/Documents | tee -a linux-bootcamp-we/linux-functions.txt
                    else
                        tar -xvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz -C $HOME/Documentos | tee -a linux-bootcamp-we/linux-functions.txt
                    fi
                echo -e "\n"

            (cat linux-bootcamp-we/linux-functions.txt && cat linux-bootcamp-we/history-linux.txt) | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            ls -l $HOME/tp-terminal-bootcamp | tee -a linux-bootcamp-we/linux-functions.txt
                echo -e "\n"

            ;;
        
        5)
            if [ -f "linux-functions.txt" ]; then
            cat linux-functions.txt | less

       else
            cat linux-bootcamp-we/linux-functions.txt | less
       fi

        ;;

        6) 
            exit 0

        ;;

esac
done




