# !/bin/bash
# Programa para ejemplificar el empaquetamiento con pbzip
# Autor: Juan Schiavoni

echo "Empaquetar en un archivo "
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
