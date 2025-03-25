# !/bim/bash
# Modificar programa utilityHost. sh para empaquetar los logs generados utilizando algún formato de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH, cuando se seleccione la opción 7. Backup de Información

option=2
result=3

archivolog=log-$(date +"%Y-%m-%d-%H-%M-%S").txt
archivozip=log-$(date +"%Y-%m-%d-%H-%M-%S").zip

echo "El valor de Option es= $option y de Result es= $result " >> $archivolog

echo "Los resultados se guardaron en: $archivolog"

if [ -f $archivolog ]; then
    echo "Empaquetar logs..."
    zip -e $archivozip $archivolog
fi

if [ -e $archivozip ]; then
        echo "Enviando $archivozip al dispositivo remoto..."
        rsync -v ./ nata@192.168.0.103:/home/nata/Documents
fi
