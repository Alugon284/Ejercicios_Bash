#!/bin/bash
suma=0
while true; do
    read -p "Ingresa un numero (0 para terminar): " numero

    if [ "$numero" -eq 0 ]; then
        echo "La suma total es: $suma"
        echo "Saliendo"
        exit 0
     else
        suma=$((suma + numero))
        echo "Suma parcial: $suma"
    fi
done
