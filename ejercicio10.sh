#!/bin/bash
numero=$1

if [ $numero -le 1 ]; then
    echo "El numero $numero no es primo."
    exit 0
fi

for ((i = 2; i <= $((numero / 2)); i++)); do
    [ $((numero % i)) -eq 0 ] && echo "El numero $numero no es primo." && exit 0
done

echo "El numero $numero es primo."
