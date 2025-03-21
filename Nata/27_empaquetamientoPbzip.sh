#!/bin/bash
#Programa para ejemplificar el empaquetamiento de archivos Pbzip
#Autor: Natanael Cantero

echo "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellcouse.tar *.sh
pbzip2 -f shellcourse.tar

echo "Empaquetar un directorio con tar y pbzip"
tar -cf *.sh -c > shellcouseDos.tar.bz2    
