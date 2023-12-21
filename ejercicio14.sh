#!/bin/bash
directorio="$1"

if [ ! -d "$directorio" ]; then
    echo "Error: La ruta proporcionada no es un directorio valido."
    exit 1
fi

echo "Listado de entradas en el directorio $directorio:"
for entrada in "$directorio"/*; do
    if [ -f "$entrada" ]; then
        echo "Archivo: $entrada"
    elif [ -d "$entrada" ]; then
        echo "Directorio: $entrada"
    else
        echo "Entrada desconocida: $entrada"
    fi
done

total_entradas=$(find "$directorio" -maxdepth 1 -type f -o -type d | wc -l)
echo "Número total de entradas procesadas: $total_entradas"
