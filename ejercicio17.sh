#!/bin/bash

archivo_origen="$1"
archivo_destino="$2"

if [ ! -f "$archivo_origen" ]; then
    echo "Error: El archivo '$archivo_origen' no existe o no es un archivo."
    exit 1
fi

if [ -e "$archivo_destino" ]; then
    echo "Error: No puedes llamar igual al archivo"
    exit 1
fi

cp "$archivo_origen" "$archivo_destino"
echo "Archivo copiado: '$archivo_origen' como '$archivo_destino'."
