# !/bim/bash
# Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos

option=2
result=3

archivolog=log-$(date +"%Y-%m-%d-%H-%M-%S").txt

echo "El valor de Option es= $option y Result es= $result" >> $archivolog

echo "Los resultados se guardaron en: $archivolog
