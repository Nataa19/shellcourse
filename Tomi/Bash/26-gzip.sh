# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando gzip´
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina

gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"

