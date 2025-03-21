#!/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario y validarla utilizando expresiones regulares
# Autor: Natanael Cantero

identificacionRegex='^[0-9]{8,9}$'
paisRegex='^(EC|CL|US|ARG)$'
fechaNacimientoRegex='^[0-9]{4} (0[1-9]|1[0-2]) (0[1-9]|[12][0-9]|3[01])$'

echo "Expresiones regulares"
read -p "Ingresar una identificación:" identificacion
read -p "Ingresar las iniciales de un país [EC, CL, US, ARG]:" pais
read -p "Ingresar la fecha de nacimiento [yyyy-MM-dd]:" fechaNacimiento

# Validation Identification
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

# Validation Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais válido"
else
    echo "Pais $pais inválido"
fi

# Validation Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi
