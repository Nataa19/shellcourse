21_archivosDirectorios.sh                                                                           0000775 0001750 0001750 00000000611 14767310353 017145  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios 
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opcion: $1"
fi
                                                                                                                       22_writeFile.sh                                                                                     0000775 0001750 0001750 00000000365 14767311267 015066  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adicion multilinea
cat << EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                           23_readFile.sh                                                                                      0000775 0001750 0001750 00000000733 14767312526 014646  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacioes en blanco al inicio o al final se recortan

echo -e "\nLeer archivo linea por linea utilizando while"
while IFS=read linea
do
    echo "$linea"
done < $1

                                     24_operacionesArchivo.sh                                                                            0000775 0001750 0001750 00000000707 14767313663 016763  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
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

                                                         25_tar.sh                                                                                           0000775 0001750 0001750 00000000335 14767314600 013714  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh


                                                                                                                                                                                                                                                                                                   26-gzip.sh                                                                                          0000775 0001750 0001750 00000000557 14767315212 014024  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando gzip´
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina

gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"

                                                                                                                                                 27_pbzip2.sh                                                                                        0000775 0001750 0001750 00000000521 14767316537 014346  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Tomás Mascia - tomasgump6@gmail.com

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                               2_variables_2.sh                                                                                    0000764 0001750 0001750 00000000173 14766331052 015227  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            #!/bin/bash
#Programa para revisar la declaración de variables


echo "Opcion nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                     2_variables.sh                                                                                      0000764 0001750 0001750 00000000444 14766331166 015015  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            #!/bin/bash
#Programa para revisar la declaración de variables

opcion=0
nombre=Tomi

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que este disponible a los demas procesos
export nombre

#Llamar al siguiente script para recuperar la varible
./2_variables_2.sh
                                                                                                                                                                                                                            3_tipoOperadores.sh                                                                                 0000775 0001750 0001750 00000001617 14766336262 016054  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
#Programa para revisar los tipos de operadores
#Autor: tomi


numA=10
numB=4
echo "Operadores Aritmeticos"
echo "Numeros: A: $numA y B: $numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Reciduo A % B =" $((numA % numB))


echo -e "\nOperadores Relacionales"
echo "Numeros: A: $numA y B: $numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores Asignacion"
echo "Numeros: A: $numA y B: $numB"
echo "Sumar A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multiplicar A = B =" $((numA= numB))
echo "Dividir A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))
                                                                                                                 4_argumentos.sh                                                                                     0000775 0001750 0001750 00000000410 14766337043 015226  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario: $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"
                                                                                                                                                                                                                                                        5_subtitucionComent.sh                                                                              0000775 0001750 0001750 00000000232 14766340766 016571  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y almacenareb y una variable para su posterior utiliacion
#Autor: tomi


                                                                                                                                                                                                                                                                                                                                                                      6_readEcho.sh                                                                                       0000775 0001750 0001750 00000000642 14767275014 014565  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read, $REPLY 
# Autor: Tomás Mascia - tomasgump6@gmail.com

option=0
backupname=""

echo "Programa de utilizades Postgres:"
echo -n "Ingresar una Opcion: "
read
option=$REPLY

echo -n "Ingresar el nombre del archivo del backup: "
read
backupname=$REPLY

echo "Opcion: $option , backupname: $backupname"



                                                                                              7_read.sh                                                                                           0000775 0001750 0001750 00000000572 14767275202 013770  0                                                                                                    ustar   tomi-mascia                     tomi-mascia                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read 
# Autor: Tomás Mascia - tomasgump6@gmail.com

option=0
backupname=""

echo "Programa de utilizades Postgres:"
read -p "Ingresar una Opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupname
echo "Opcion: $option , backupname: $backupname"



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      