#!/bin/bash

directorio="$1"

if [ ! -d "$directorio" ]; then
    echo "Error: La ruta proporcionada no es un directorio valido."
    exit 1
fi

# Listar y clasificar las entradas en el directorio
echo "Listado de entradas en el directorio $directorio:"
while IFS= read -r entrada; do
    if [ -f "$entrada" ]; then
        echo "Archivo: $entrada"
    elif [ -d "$entrada" ]; then
        echo "Directorio: $entrada"
    elif [ -L "$entrada" ]; then
        echo "Enlace simbólico: $entrada"
    elif [ -b "$entrada" ]; then
        echo "Archivo especial de bloque: $entrada"
    elif [ -c "$entrada" ]; then
        echo "Archivo especial de carácter: $entrada"
    else
        echo "Entrada desconocida: $entrada"
    fi
done < <(find "$directorio" -maxdepth 1)

# Contar el número total de entradas
total_entradas=$(find "$directorio" -maxdepth 1 | wc -l)
echo "Numero total de entradas procesadas: $total_entradas"
