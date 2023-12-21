#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Escribe el nombre de un directorio como prametro."
    exit 1
fi

directorio="$1"

if [ ! -e "$directorio" ]; then
    echo "Error: El directorio '$directorio' no existe."
    exit 1
fi

if [ ! -d "$directorio" ]; then
    echo "Error: '$directorio' no es un directorio valido."
    exit 1
fi

archivos=$(find "$directorio" -maxdepth 1 -type f | wc -l)
subdirectorios=$(find "$directorio" -maxdepth 1 -type d | wc -l)

echo "Estadísticas del directorio '$directorio':"
echo "Numero de archivos: $archivos"
echo "Numero de subdirectorios: $subdirectorios"
