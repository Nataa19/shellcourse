#!/bin/bash
#Programa para ejemplificar el empaquetamiento con clave usando zip
#Autor: Natanael Cantero

echo "Empaquetar todos los scripts de la carpeta shellcouse con zip y asignarle una clave"
zip -e shellcouse.zip *.sh
