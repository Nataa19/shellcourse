#!/bin/bash
#Programa para ejemplificar el empaquetamiento de archivos
#Autor: Natanael Cantero

echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellcouse.tar *.sh
#CUando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellcouse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9

