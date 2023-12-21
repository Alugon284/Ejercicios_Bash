#!/bin/bash

usuario="$1"

if id "$usuario" &>/dev/null; then
    echo "El usuario '$usuario' esta dado de alta en el sistema."
else
    echo "El usuario '$usuario' no esta dado de alta en el sistema."
    exit 1
fi

if who | grep -q "^$usuario "; then
    echo "El usuario '$usuario' ha iniciado sesion en el sistema."
else
    echo "El usuario '$usuario' no ha iniciado sesion en el sistema."
fi
