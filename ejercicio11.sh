#!/bin/bash

numero_secreto=74

echo "¡Bienvenido al juego de adivinar el numero (1-100)!"

while true; do
    read -p "Tu eleccion: " intento

    if [ "$intento" -eq "$numero_secreto" ]; then
        echo "¡Enhorabuena! Has adivinado el número correctamente."
        break
    elif [ "$intento" -lt "$numero_secreto" ]; then
        echo "El número es mayor. Intenta nuevamente."
    else
        echo "El número es menor. Intenta nuevamente."
    fi
done
