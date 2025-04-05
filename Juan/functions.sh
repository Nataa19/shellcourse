# !/bin/bash
# Trabajo practico
# Autor: Juan Schiavoni

option=0

#Funcion para actualizar el sistema
update_system(){
    echo "Actualizando el sistema..."
    sudo apt update && sudo apt upgrade -y
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar paquetes que se úeden actualizar
list_packages(){
    echo "Se pueden actualizar los siguientes paquetes: "
    sudo apt list --upgradable
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#funcion para limpiar paquetes obsoletos
clean_packages(){
    echo "Limpiando paquetes obsoletos..."
    sudo apt clean && sudo apt autoremove
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para crear directorio
create_directory(){
    echo "Creando el directorio $1"
    mkdir "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para crear archivos
create_file(){
    echo "Creando el archivo $1"
    touch "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para entrar y salir de directorios
io_directory() {
    echo "Cambiando de directorio..."
    cd "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para copiar archvos
copy_resources(){
    echo "Copiendo $1 en $2"
    cp $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para comprimir archivos
tar_function(){
    echo "Comprimiendo..."
    tar -cvzf $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mover archivos y directorios
move_resources(){
    echo "moviendo $1 a $2"
    mv $1 $2
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para descomprimir archivos
decompress_files(){
    echo "Descomprimiendo..."
    tar -xvzf $1
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar la fecha y hora
date_system(){
    echo "La fecha y hora del sistema es: "
    date "+%d/%m/%Y %T"
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar la ubicacion 
location(){
    echo "La ubicacion actual es: "
    pwd
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar el ususario
user(){
    echo "El usuario es: "
    whoami
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar SO y caracteristicas
so_system(){
    echo "El sistema operativo y sus caracteristicas son: "
    uname -a
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar el uso de disco
disk_used(){
    echo "El uso del disco es el siguiente: "
    df -h
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar los 3 procesos con mas consumo de memoria
process_memeory(){
    echo "Los 3 procesos con mayor consumo de memoria son: "
    ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar el historial de de comandos y gurdarlo en un archivo
command_history(){
    echo "El historial de comandos es el siguiente: "
    history > linux-bootcamp-we/history-linux.txt
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para mostrar que servidores usa google.com
google_server(){
    echo "Los servidores de Google son: "
    ping google.com | head -n 4
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

#Funcion para listar archivos 
backup_list(){
    echo "Archivos: "
    ls "$1"
    echo -e "\n"
    read -n 1 -s -r -p "Presiona ENTER para continuar..."
}

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "--------------------------------------------"
    echo "      Trabajp Practico de Bash - Linux      "
    echo "--------------------------------------------"
    echo "               MENU PRINCIPAL               "
    echo "--------------------------------------------"
    echo "1. Actualizar"
    echo "2. Crear"
    echo "3. Mostrar"
    echo "4. Finalizar"
    echo "5. Salir"

    # Leer los datos del usuario
    read -n1 -p "Ingrese una opción [1-5]: " option

    # Validar la opción ingresada

    case $option in
    	
    1)
	while :
	do    	
	    clear
            echo "--------------------------------------------"
            echo "            SUBMENÚ - ACTUALIZAR            "
            echo "--------------------------------------------"
            echo "1. Actualizar todo"
            echo "2. Mostrar paquetes actualizables"
            echo "3. Limpiar y autoremove"
            echo "0. Volver al menú principal"
            read -n1 -p "Ingrese una opción [0-3]: " o1
            echo ""	

            case $o1 in
       	    1)
	        update_system
       	    	#sudo apt update && sudo apt upgrade -y
       	    	;;
       	    2)
       	    	list_packages
		#sudo apt list --upgradable
       	    	;;
       	    3) 
		clean_packages
       	    	#sudo apt clean && sudo apt autoremove
       	    	;;
            0) #vuelve al menu principal
		break    
	    	;;
            *)
	    	echo -e "\nOpcion invalida"
	    	sleep 1
	    	;;
            esac
	done
        ;;
	
    2)
	while :
	do	
	    clear 
  	    echo "---------------------------------------------"
            echo "               SUBMENÚ - CREAR               "
            echo "---------------------------------------------"
            echo "1. Crear Directorio y archivos"
            echo "2. Crear backup"
            echo "3. Guardar carpeta en backup"
       	    echo "0. Volver al menú principal"
            read -n1 -p "Ingrese una opción [0-3]: " o2
            echo "" 
	
       	    case $o2 in
       	    1)
            	if [ ! -d "linux-bootcamp-we" ]; then
		    create_directory linux-bootcamp-we
		else
		    echo "El directorio linux-bootcamp-we ya existe"
		fi

		io_directory linux-bootcamp-we

		if [ ! -f "linux-functions.txt" ]; then
		    touch linux-functions.txt
		else 
		    echo "El archivo linux-functions.txt ya existe"
		fi

		if [ ! -f "history-linux.txt" ]; then
        	    touch history-linux.txt
    		else
        	    echo "El archivo 'history-linux.txt' ya existe."
    		fi

    		io_directory ..

		#mkdir linux-bootcamp-we && cd linux-bootcamp-we && touch linux-functions.txt history-linux.txt && cd .. 
            	;;
            2) 
		if [ ! -d "backups-bootcamp-we" ]; then
		    create_directory backups-bootcamp-we
		else
		    echo "El directorio backups-bootcamp-we ya existe"
		fi
            	#mkdir backups-bootcamp-we
            	;;
            3)
		if [ -d "./backups-bootcamp-we" ]; then
   	            cp -r /home/juanlinux/shellcourse/Juan/RetosJuan ./backups-bootcamp-we/
    		else
    		    echo "La carpeta backups-bootcamp-we no existe."
		fi
            	#tar -cvzf bkp.tar.gz ../Retos && mv bkp.tar.gz backups-bootcamp-we/ && cd  backups-bootcamp-we && tar -xvzf ./backups-bootcamp-we/bkp.tar.gz && cd ..
	    	;;
	    0) #vuelve al menu principal
            	break
		;;
            *)
            	echo -e "\nOpcion invalida"
            	sleep 1
            	;;
	    esac
       done    
       ;;

    3) 
	while : 
	do	
	    clear
            echo "---------------------------------------------"
       	    echo "              SUBMENÚ - MOSTRAR              "
            echo "---------------------------------------------"
            echo "1. Mostrar fecha y hora"
            echo "2. Mostrar directorio actual"
            echo "3. Mostrar usuario actual"
            echo "4. Mostrar información del sistema (uname)"
            echo "5. Mostrar uso del disco"
            echo "6. Mostrar procesos con mayor uso de RAM"
            echo "7. Guardar historial de comandos en archivo"
            echo "8. Hacer ping a google.com"
            echo "0. Volver al menú principal"
            read -n1 -p "Ingrese una opción [0-8]: " o3
            echo ""
       	
       	    case $o3 in
       	    1)
		date_system
       	    	#date "+%d/%m/%Y %T"
       	    	;;
       	    2) 
		location    
       	    	#pwd 
       	    	;;
       	    3)
		user    
       	    	#whoami
       	    	;;
       	    4)
		so_system    
       	    	#uname -a
       	    	;;
       	    5)
		disk_used    
       	    	#df -h
       	    	;;
       	    6)
		process_memory    
       	    	#ps -eo user,pid,%mem,stat --sort=-%mem | head -n 4
       	    	;;
       	    7)
		command_history    
       	    	#history > linux-bootcamp-we/history-linux.txt
       	    	;;
       	    8)
		google_server    
       	    	#ping google.com | head -n 4
       	    	;;
	    0)
		break    
            	;; # Volver al menú principal
            *)
            	echo -e "\nOpción inválida"
            	sleep 1 
	    	;;
       	    esac
        done    
        ;;
 
    4)
	while :
	do	
	    clear
    	    echo "-------------------------------------------------------"
            echo "                  SUBMENÚ - FINALIZAR                  "
    	    echo "-------------------------------------------------------"
    	    echo "1. Crear backup comprimido del directorio actual"
    	    echo "2. Restaurar backup al HOME"
    	    echo "3. Guardar funciones y mostrar historial"
    	    echo "4. Listar backups disponibles"
    	    echo "0. Volver al menú principal"
    	    read -n1 -p "Ingrese una opción [0-4]: " o4
    	    echo ""
       	
       	    case $o4 in
       	    1)
		if [ ! -d "backups-bootcamp-we" ]; then
        	   echo "La carpeta backups-bootcamp-we no existe. Creándola..."
                   create_directory backups-bootcamp-we
    		fi
	    	tar_function backups-bootcamp-we/tp-terminal-bootcamp.tar.gz .	
       	    	#tar -cvzf backups-bootcamp-we/tp-terminal-bootcamp.tar.gz . 
       	    	;;
       	    2)
		if [ -f "backups-bootcamp-we/tp-terminal-bootcamp.tar.gz" ]; then
		    copy_resources backups-bootcamp-we/tp-terminal-bootcamp.tar.gz $HOME
	    	    io_directory $HOME
		    decompress_files tp-terminal-bootcamp.tar.gz .
	    	else
		    echo "No existe el archivo tp-terminal-bootcamp.tar.gz"
		fi
       	    	#cp backups-bootcamp-we/tp-terminal-bootcamp.tar.gz $HOME && cd $HOME && tar -xvzf tp-terminal-bootcamp.tar.gz .
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
    		    echo "El archivo history-linux.txt no existe en linux-bootcamp-we."
		fi	
       	    	#cat functions.sh > linux-bootcamp-we/linux-functions.txt && cat linux-bootcamp-we/history-linux.txt
       	    	;;
       	    4)
		if [ -d "backups-bootcamp-we" ]; then
    		    if [ "$(ls -A backups-bootcamp-we)" ]; then
        		echo "Archivos en backups-bootcamp-we:"
        		ls backups-bootcamp-we/
    		    else
       			 echo "El directorio backups-bootcamp-we está vacío."
    		    fi
		else
    		    echo "El directorio backups-bootcamp-we no existe."
		fi    
       	    	#ls backups-bootcamp-we/
       	    	;;
	    0)
		break    
            	;; # Volver al menú principal
            *)
            	echo -e "\nOpción inválida"
            	sleep 1 
	     	;;
       	    esac
	done
        ;;
    5)
    	echo -e "\nSaliendo del programa..."
	exit 0
	;;
    *)
    	echo -e "\nOpcion invalida"
	sleep 1
	;;	
    esac
done
