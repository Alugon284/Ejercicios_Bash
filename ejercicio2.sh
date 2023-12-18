#!/bin/bash
if [ -n "$1" ] && [ -n "$2" ]; then
    echo $(( $1 + $2 ))
else
    echo "Debes ejecutar el script de la siguiente forma:"
    echo "./ejercicio2.sh <numero> <numero>"
fi

