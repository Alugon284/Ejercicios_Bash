#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Uso: $0 [ahora | minutos N]"
    exit 1
fi

opcion="$1"

case $opcion in
    ahora)
        echo "Reiniciando el equipo ahora..."
        sudo shutdown -r now
        ;;
    minutos)
        if [ "$#" -ne 2 ]; then
            echo "Error: Debes proporcionar el número de minutos como segundo parámetro."
            exit 1
        fi

        minutos="$2"
        echo "Reiniciando el equipo en $minutos minutos..."
        sudo shutdown -r "+$minutos"
        ;;
    *)
        echo "Error: Opción no reconocida."
        exit 1
        ;;
esac

exit 0

