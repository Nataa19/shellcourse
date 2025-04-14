# !/bin/bash
# Trabajo practico de linux y bash
# Autor: Tomás Mascia


#---------------------------------- ACTUALIZAR -----------------------------------
# Esta funcion actualiza el sistema.

actualizar_sistema(){
    echo "Actualizando sistema..."
    sudo apt update && sudo apt upgrade -y | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion lo que hace es mostrarte la lista de los paquetes que se pueden actualizar

actualizar_paquetes_lista(){
    echo "Lista de paquetes para actualizar:"
    sudo apt list --upgradable | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion limpia paquetes obsoletos, que ya no sirven

limpiar_cache(){
    echo "Limpiando archivos no necesitados y no deseados..."
    sudo apt clean && sudo apt autoremove | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


#---------------------------------- CREAR --------------------------------------

# Esta funcion crea un directorio 

crear_directorio(){
    echo "Creando el directorio $1"
    mkdir "$1" | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion crea un archivo

crear_archivo(){
    echo "Creando el archivo $1"
    touch "$1" | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion te mueve a un directorio elegido

cd_directorio(){
    echo "Entrando al directorio $1"
    cd "$1" | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion toma dos archivos, copia el contenido del primero y lo pone en el otro

copiar_archivo(){
    echo "Copiando el contenido de $1 y poniendolo en $2"
    cp $1 $2 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion comprime archivos pasado a un archivo .tar

comprime_archivos(){
    echo "Comprimiendo los archivos..."
    tar -cvzf $1 $2 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion toma dos archivos o directorios y toma el primero y lo mueve de lugar para el segundo

mover_archivos(){
    echo "Moviendo $1 a $2"
    mv $1 $2 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion toma un archivo comprimido y lo descomprime

descomprime_archivos(){
    echo "Descomprimiendo los archivos..."
    tar -xvzf $1 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# ------------------------------------------------------------------MOSTRAR-------------------------------------------------------

# Esta funcion muestra en pantalla la hora actual con la fecha

funcion_fecha(){
    echo "La fecha es: "
    date "+%d/%m/%Y %T" | tee -a linux-functions.txt  
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion muestra en pantalla la localicacion del sistema

ubicacion(){
    echo "La ubicacion es: "
    pwd | tee -a linux-functions.txt 
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion muestra en pantalla el nombre del ususario

nombre_usuario(){
    echo "El nombre del usuario es:"
    whoami | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p  "continuar..."
}


# Esta funcion muestra en pantalla el sistema operativo y caracterizticas del mismo

informacion_SO(){
    echo "El sistema Operativo y sus caracateristicas:"
    uname -a | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}

# Esta funcion muestra en pantalla el uso del disco

info_disco(){
    echo "El uso del disco:"
    df -h | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion muestra en pantalla los 3 procesos con mas consumo de memoria

mostrar_procesos(){
    echo "Los tres procesos con mayor consumo son:"
    ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}


# Esta funcion muestra en pantalla el historial de comandos y los guarda en /history-linux.txt

guardar_historial(){

    if [ -f history-linux.txt ]; then
        history > history-linux.txt
        echo "Se guardo todo en el archivo history-linux.txt"
        read -n 1 -s -r -p "continuar..."
    
    else

        touch history-linux.txt
        history > history-linux.txt
        echo -e "No se encontro pero ya lo creamos y guardamos la informacion de history dentro"
        read -n 1 -s -r -p "continuar..."
    fi
    
    mv history-linux.txt linux-bootcamp-we
    
}


# Esta funcion te muestra los servidores que utiliza google

google_servidores(){
    echo "LOs servidores de Google son: "
    ping google.com | head -n 4 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p  "continuar..."
}


# Esta funcion muestra una lista de archivos

mostrar_lista_archivos(){
    echo "Lista de archivos:"
    ls $1 | tee -a linux-functions.txt
    echo -e "\n"
    read -n 1 -s -r -p "continuar..."
}



# ENTRO DE LA CARPETA TP-TERMINAL-BOOTCAMP PARA TRABAJAR

cd tp-terminal-bootcamp

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
                
                # VALIDAMOS SI EXISTE EL DIRECTORIO LINUX-BOOTCAMP-WE
                
                if [ ! -d "linux-bootcamp-we" ]; then
                    mkdir linux-bootcamp-we
                else
                    echo "El directorio linux-bootcamp.we ya existe"
                fi
                
                # ENTRO AL DIRECTORIO DE LINUX-BOOTCAMP-WE

                cd linux-bootcamp-we
                
                # DENTRO DE LINUX_BOOTCAMP-WE CREO UN ARCHIVO LINUX-FUNCIONS.TXT

                if [ ! -f "linux-functions.txt" ]; then
                    touch linux-functions.txt
                else
                    echo "El archivo linux-functions.txt ya existe"
                fi

                # DENTRO TAMBIEN CREO EL ARCHIVO HISTORY-LINUX.TXT
                
                if [ ! -f "history-linux.txt" ]; then
                    touch history-linux.txt
                else
                    echo "El archivo history-linux.txt ya existe"
                
                fi
                
                # VUELVO A LA CARPETA TP-TERMINAL

                cd_directorio .. 

                ;;

            2)  
                # VALIDAMOS SI EXISTE EL DIRECTORIO BACKUP-BOOTCAMP-WE

                if [ ! -d "backup-bootcamp-we" ]; then
                    crear_directorio backup-bootcamp-we
                else
                    echo "El directorio backup-bootcamp-we ya existe"
                    read -n 1 -s -p  "continuar..."
                fi
                ;;

            3)
                # COPIAMOS LA CARPETA DE RETOS DENTRO DE LA CARPETA DE BUCKUP-BOOTCAMP-WE

                if [ -d "./backup-bootcamp-we" ]; then
                    cp -r /home/tomi-mascia/Código/shellcourse/Tomi/Bash/Retos ./backup-bootcamp-we/
                    echo -e "Carpeta ya copiada en backup-bootcamp-we\n"
                    read -n 1 -s -p "continuar..."
                else
                    echo "La carpeta backups-bootcamp-we no existe"
                    read -n 1 -s -p "continuar..."
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
            
            7)guardar_historial;;
            
            8)google_servidores;;
            
            *)echo -e "\n Opcion no valida";;
            
            esac
            
            # MOVEMOS EL ARCHIVO LINUX-FUNCTIONS.TXT A LINUX-BOOTCAMP-WE
           
            mv linux-functions.txt linux-bootcamp-we
        
        done
        
        ;;
    
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
            echo "0_ Volver al menu ion actualiza el sistema."

            read -n1 -p "Ingresar una opcion [0-4]: " opmenu4

            echo ""

            case $opmenu4 in
            
            0)break ;;
            
            1)
                if [ ! -d "backup-bootcamp-we" ]; then
                    echo "La carpeta backup-bootcamp-we no existe, ahora la vamos a crear..."
                    crear_directorio backup-bootcamp-we
                else
                    continue
                fi
                
                # COMPRIMIMOS LA CARPETA
                
                comprime_archivos ~/Código/shellcourse/Tomi/tp-terminal-bootcamp tp-terminal-bootcamp.tar.gz  
                mv tp-terminal-bootcamp.tar.gz backup.bootcamp-we/
                echo -e "La carpeta actual ya se comprimio\n"
                read -n 1 -s -p "continuar..."

                ;;
            
            2)
                
                if [ -f "backup-bootcamp-we/tp-terminal-bootcamp.tar.gz" ]; then
                    copiar_archivo backup-bootcamp-we/tp-terminal-bootcamp.tar.gz $HOME
                    cd_directorio $HOME
                    decomprime_archivos tp-terminal-bootcamp.tar.gz .
                    echo -e "El archivo ya se descomprimio en la HOME"
                    read -n 1 -s -p "continuar..."

                else
                   
                    echo -e "No existe el archivo tp-terminal-bootcamp.tar.gz\n"
                    read -n 1 -s -p "continuar..."

                fi 
                ;;
            
            3)
                cd_directorio linux-bootcamp-we
               
                if [ -f "history-linux.txt" ]; then
                    echo "Contenido de history-linux.txt: "
                    cat history-linux.txt
                else
                    echo "El archivo history-linux.txt no existe en linux-bootcamp-we"
                fi

                ;;
                
            4)
                if [ -d "backups-bootcamp-we" ]; then
                    if [ "$(ls -A backup-bootcamp-we)" ]; then
                        echo "Archivos de backups-bootcamp-we: "
                        ls backup-bootcamp.we/
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

