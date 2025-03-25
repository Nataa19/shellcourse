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

echo "********¡BIENVENIDO AL MENÚ MASTER!********"
echo "***Elije una de las siguientes opciones***"
echo "          1) Procesos Actuales"
echo "          2) Memoria Disponible"
echo "          3) Espacio en Disco"
echo "          4) Información de Red"
echo "          5) Variables de Entorno Configuradas"
echo "          6) Información Programa"
echo "          7) Backup información"
read -n1 -p "Ingrese la opcion que sugiere" opcion
echo -e "\n"
infoprograma= echo "Este programa esta destinado a ayudarte con información sobre su sistema y automatizar algunas tareas."

option=2
result=3

archivolog=log-$(date +"%Y-%m-%d-%H-%M-%S").txt
archivozip=log-$(date +"%Y-%m-%d-%H-%M-%S").zip

case $opcion in 
    1) echo "Sus procesos actuales son..."
    ps -ux
    ;;
    2) echo "Tenemos la siguiente memoria RAM disponible:"
    free -h
    ;;
    3) echo "El espacio disponible en almacenamiento es:"
    df -h
    ;;
    4) echo "Info de red a continuación:"
    ip addr && speedtest --simple --secure
    ;;
    5) echo "Las variables de entorno configurables se encuentran en /etc/profile"
    cat /etc/profile
    ;;
    6) echo "La Info de este programa: $infoprograma"
    ;;
    7) echo "El valor de Option es= $option y de Result es= $result " >> $archivolog
    echo "Los resultados se guardaron en: $archivolog"
    if [ -f $archivolog ]; then
        echo "Empaquetar logs..."
        zip -e $archivozip $archivolog
    fi

    if [ -e $archivozip ]; then
        echo "Enviando $archivozip al dispositivo remoto..."
        rsync -v ./ nata@192.168.0.103:/home/nata/Documents
    fi
    ;;
    *)
        echo "Opcion no reconocida"
esac
    
