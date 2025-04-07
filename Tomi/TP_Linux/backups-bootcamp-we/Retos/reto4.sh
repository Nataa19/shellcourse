# !/bin/bash
# Programa que despliega un menu con opciones
# Autor: Tomás Mascia - tomasgump6@gmail.com

opcion=0


while :
do
    clear

        echo "--------------------------------------------------------------------"
        echo "-------------------------<Menú desplegable>-------------------------"
        echo "--------------------------------------------------------------------"

        echo "1) Procesos actuales"
        echo "2) Memoria disponible"
        echo "3) Espacio en disco"
        echo "4) Informacion de Red"
        echo "5) Variables de entorno configuradas"
        echo "6) Informacion Programa"
        echo "7) Backup informacion"
        echo "8) Ingrese una opción"
        echo "9) Salir"

        read -n1 -p "Ingrese la opción requerida [1-9]: " opcion
        echo -e "\n"


        case $opcion in
            1)
                echo "Procesos actuales"
                echo "Aqui mostrariamos todos los procesos que se estan realizando en este preciso momento"
                sleep 2
                ;;
            2)
                echo "Memoria disponible"
                echo "Aqui mostraremos la memoria disponible que no se esta utilizando en este momento"
                sleep 2
                ;;
            3)
                echo "Espacio en disco"
                echo "Aqui mostramos un diagrama o una representacion de cuanto espacio disponible nos queda en el disco"
                sleep 2
                ;;
            4)
                echo "Informacion de Red"
                echo "Aqui mostraremos la velocidad e informacion de red que estemos conectados"
                sleep 2
                ;;
            5)
                echo "Variables de entorno configuradas"
                echo "Aqui mostramos una lista con todas las variables de entorno"
                sleep 2
                ;;
            6)
                echo "Informacion Programa"
                echo "Aqui podriamos meter un read para poder identidicar el programa que deseamos obtener la informacion y luego retornar una breve informacion de la misma"
                sleep 2
                ;;
            7)
                echo "Backup informacion"
                echo "Aqui mostraremos informacion sobre cuando fue y que contiene nuestro utlimo backup"
                sleep 2
                ;;
            8)
                echo "Ingrese una opcion"
                echo "Aqui podriamos meter un read que lea y busque esa opcion"
                sleep 2
                ;;
            9)
                echo "Usted a finalizado este programa"
                echo "Gracias por utilizarno"
                exit 0
                ;;
        esac
done

