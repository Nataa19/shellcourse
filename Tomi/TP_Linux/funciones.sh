# !/bin/bash
# Trabajo practico de linux y bash
# Autor: Tomás Mascia

#---------------------------------- ACTUALIZAR -----------------------------------
# Esta funcion actualiza el sistema.

actualizar_sistema(){
    echo "Actualizando sistema..."
    sudo apt update && sudo apt upgrade -y
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion lo que hace es mostrarte la lista de los paquetes que se pueden actualizar

actualizar_paquetes_lista(){
    echo "Lista de paquetes para actualizar:"
    sudo apt list --upgradable
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion limpia paquetes obsoletos, que ya no sirven

limpiar_cache(){
    echo "Limpiando archivos no necesitados y no deseados..."
    sudo apt clean && sudo apt autoremove
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


#---------------------------------- CREAR --------------------------------------
# Esta funcion crea un directorio 

crear_directorio(){
    echo "Creando el directorio $1"
    mkdir "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion crea un archivo

crear_archivo(){
    echo "Creando el archivo $1"
    touch "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion te mueve a un directorio elegido

cd_directorio(){
    echo "Entrando al directorio $1"
    cd "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion toma dos archivos, copia el contenido del primero y lo pone en el otro

copiar_archivo(){
    echo "Copiando el contenido de $1 y poniendolo en $2"
    cp $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion comprime archivos pasado a un archivo .tar

comprime_archivos(){
    echo "Comprimiendo los archivos..."
    tar -cvzf $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion toma dos archivos o directorios y toma el primero y lo mueve de lugar para el segundo

mover_archivos(){
    echo "Moviendo $1 a $2"
    mv $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion toma un archivo comprimido y lo descomprime

descomprime_archivos(){
    echo "Descomprimiendo los archivos..."
    tar -xvzf $1
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# ------------------------------------------------------------------MOSTRAR-------------------------------------------------------

# Esta funcion muestra en pantalla la hora actual con la fecha

funcion_fecha(){
    echo "La fecha es: "
    date "+%d/%m/%Y %T"
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar."
}


# Esta funcion muestra en pantalla la localicacion del sistema

ubicacion(){
    echo "La ubicacion es: "
    pwd
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion muestra en pantalla el nombre del ususario

nombre_usuario(){
    echo "El nombre del usuario es:"
    whoami
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion muestra en pantalla el sistema operativo y caracterizticas del mismo

informacion_SO(){
    echo "El sistema Operativo y sus caracateristicas:"
    uname -a
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}

# Esta funcion muestra en pantalla el uso del disco

info_disco(){
    echo "El uso del disco:"
    df -h
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion muestra en pantalla los 3 procesos con mas consumo de memoria

mostrar_procesos(){
    echo "Los tres procesos con mayor consumo son:"
    ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion muestra en pantalla el historial de comandos y los guarda en /history-linux.txt

guardar_historial(){
    echo "El historial de comandos es el siguiente: "
    history > linux-bootcamp-we/history-linux.txt
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion te muestra los servidores que utiliza google

google_servidores(){
    echo "LOs servidores de Google son: "
    ping google.com | head -n 4
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}


# Esta funcion muestra una lista de archivos

mostrar_lista_archivos(){
    echo "Lista de archivos:"
    ls $1
    echo -e "\n"
    read -n 1 -s -r -p "Presione ENTER para continuar"
}

# Ahora voy a hacer un menu desplegable para que pueda el ususario pueda elegir lo que quiera hacer
# MENU PRINCIPAL

while :
do
    # Limpiamos la pantalla para poder extender el menu desplegable
    clear
    # Desplegamos el menu principal
    echo "------------------------------------------------------"
    echo "--------------------MENU PRINCIPAL--------------------"
    echo "------------------------------------------------------"
    echo "1_ Actualizar"
    echo "2_ Crear"
    echo "3_ Mostrar"
    echo "4_ Finalizar"
    echo "5_ Salir"
    
    # Leemos la entrada del usuario y depende de su eleccion tenemos otro menu desplegable para que pueda seleccionar mejor la accion que desea
    read -n1 -p "Ingersar una opcion [1-5]: " opcion
    
    # Submenu dependiendo de la opcion

    case $opcion in
    
    1)
    while :
    do
        clear
            echo "----------------------------------------------------------"
            echo "--------------------Menu de Actualizar--------------------"
            echo "----------------------------------------------------------"
            echo "1_ Actualizar todo"
            echo "2_ Mostrar paquetes para actualizar"
            echo "3_ Limpiar cache"
            echo "0_ Volver al menú principal"

            read -n1 -p "Ingrese una opcion [0-3]: " opmenu1

            echo ""
            
            case $opmenu1 in
            
            0)
            break;;

            1)
            actualizar_sistema;;
            
            2)
            actualizar_paquetes_lista;;
            
            3)
            limpiar_cache;;
            
            *)
                echo -e "\n Opcion no valida"
                sleep 2;;
            esac
    done;;
    
    2)
    while :
    do
        clear
            echo "-----------------------------------------------------"
            echo "--------------------Menu de Crear--------------------"
            echo "-----------------------------------------------------"
            echo "1_ Crear Directorio y archivo"
            echo "2_ Crear Backup"
            echo "3_ Guardar carpeta en Backup"
            echo "0_ Volver al menú principal"

            read -n1 -p "Ingrese una opcion [0-3]: " opmenu2

            echo ""

            case $opmenu2 in
           
            0)  break;;

            1)  
                
                # Me fijo que exista el directorio y si no existe lo creo
                if [ ! -d "linux-bootcamp-we" ]; then
                    crear_directorio linux-bootcamp.we
                else
                    echo "El directorio linux-bootcamp.we ya existe"
                fi
                
                # Entro al directorio creado y valido si mi archivo existe o no

                cd_directorio linux-bootcamp.we
                
                if [ ! -f "linux-functions.txt" ]; then
                    crear_archivo linux-functions.txt
                else
                    echo "El archivo linux-functions.txt ya existe"
                fi

                # Entro al directorio creado y valido si mi archivo existe o no
                
                if [ ! -f "history-linux.txt" ]; then
                    crear_archivo history-linux.txt
                else
                    echo "El archivo history-linux.txt ya existe"
                
                fi
                # Vuelvo a la carpeta principal

                cd_directorio .. 
                ;;

            2)  
                
                if [ ! -d "backup-bootcamp-we" ]; then
                    crear_directorio backup-bootcamp-we
                else
                    echo "El archivo backup-bootcamp-we ya existe"
                fi
                ;;
            3)
                
                if [ -d "./backup-bootcamp-we" ]; then
                    cp -r /home/tomi-mascia/Código/shellcourse/Tomi/Retos ./backups-bootcamp-we/
                else
                    echo "La carpeta backups-bootcamp-we no existe"
                fi
                ;;
            *) 
                echo -e "Opcion no disponible"
                sleep 2;;

            esac
        done;;
    
    3)
    while :
    do
        clear
            echo "---------------------------------------------------------"
            echo "-------------------- Menu de Mostrar --------------------"
            echo "---------------------------------------------------------"
            echo "1_ Mostrar fecha y hora"
            echo "2_ Mostrar directorio actual"
            echo "3_ Mostrar usuario actual"
            echo "4_ Mostrar informacion del sistema"
            echo "5_ Mostrar uso del disco"
            echo "6_ Mostrar procesos con mayor utilizacion de RAM"
            echo "7_ Guardar historial de comandos"
            echo "8_ Mostrar servidores de Google"
            echo "0_ Volver al menu principal"
            read -n1 -p "Ingrese una opcion [0-8]: " opmenu3 
           
            echo ""

            case $opmenu3 in
            0)break;;
            1)funcion_fecha;;
            2)ubicacion;;
            3)nombre_usuario;;
            4)informacion_SO;;
            5)info_disco;;
            6)mostrar_procesos;;
            7)guardiar_historial;;
            8)google_servidores;;
            *)echo -e "\n Opcion no valida";;
            esac
        done;;
    4)
    while :
    do
        clear
            echo "-----------------------------------------------------------"
            echo "-------------------- Menu de Finalizar --------------------"
            echo "-----------------------------------------------------------"
            echo "1_ Crear backup comprimido del directorio actual"
            echo "2_ Restaurar backup al HOME"
            echo "3_ Guardar funciones y mostrar historial"
            echo "4_ Listar backuops disponibles"
            echo "0_ Volver al menu principal"
            read -n1 -p "Ingresar una opcion [0-4]: " opmenu4

            echo ""

            case $opmenu4 in
            
            0)break ;;
            
            1)
                if [ ! -d "backups-bootcamp-we" ]; then
                    echo "La carpeta backups-bootcamp-we no existe, ahora la vamos a crear..."
                    crear_directorio backups-bootcamp-we
                fi
                comprime_archivos backups-bootcamp-we/tp-terminal-bootcamp.tar.gz .
                ;;
            2)
                if [ -f "backups-bootcamp-we/tp-terminal-bootcamp.tar.gz" ]; then
                    copiar_archivo backups-bootcamp-we/tp-terminal-bootcamp.tar.gz $HOME
                        cd_directorio$HOME
                        decomprime_archivos tp-terminal-bootcamp.tar.gz .
                else
                    echo "No existe el archivo tp-terminal-bootcamp.tar.gz"
                fi 
                ;;
            3)
                if [ -d "linux-bootcamp-we" ]; then
                    cat functions.sh > linux-bootcamp-we/linux-functions.txt
                echo "Se guardó el contenido de functions.sh en linux-functions.txt."
                else
                echo "El directorio linux-bootcamp-we no existe."
                fi

                if [ -f "linux-bootcamp-we/history-linux.txt" ]; then
                    echo "Contenido de history-linux.txt: "
                    cat linux-bootcamp-we/history-linux.txt
                else
                    echo "El archivo history-linux.txt no existe en linux-bootcamp-we"
                fi
                ;;
            4)
                if [ -d "backups-bootcamp-we" ]; then
                    if [ "$(ls -A backups-bootcamp-we)" ]; then
                        echo "Archivos de backups-bootcamp-we: "
                        ls backups-bootcamp.we/
                        else
                            echo "El directorio backups-bootcamp-we esta vacio"
                    fi
                else
                    echo "El direcorio backups-bootcamp-we no existe"
                fi
                ;;
            *)
                echo -e "\n Opcion no valida";;
                
            esac
        done
        ;;
    5)
        echo -e "\n Saliendo del programa..."
        exit 0;;
    *)
        echo -e "\n Opcion no valida"
        sleep 2;;
    esac
done

