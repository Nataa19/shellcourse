# !/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Operaciones en un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupscripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion $HOME" 
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

