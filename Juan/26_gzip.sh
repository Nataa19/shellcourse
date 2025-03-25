# !/bin/bash
# Programa para ejemplificar el empaquetamiento con tar y gzip
# Autor: Juan Schiavoni

echo "Empaquetar en un archivo "
tar -cvf shellCourse.tar *.sh
#Cuendo se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo con ratio 9"
gzip -9 9_options.sh
