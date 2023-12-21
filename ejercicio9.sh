#!/bin/bash

read -p "Escribe un numero: " numero

if [ $((numero % 2)) -eq 0 ]; then
    echo "$numero es un numero par."
else
    echo "$numero es un numero impar."
fi
