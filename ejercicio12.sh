#!/bin/bash

function sumar {
    echo $(($1 + $2))
}

function restar {
    echo $(($1 - $2))
}

function multiplicar {
    echo $(($1 * $2))
}

function dividir {
    if [ $2 -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
    else
        echo $(($1 / $2))
    fi
}

while true; do
    echo "Menu:"
    echo "1 - Sumar"
    echo "2 - Restar"
    echo "3 - Dividir"
    echo "4 - Multiplicar"
    echo "0 - Salir"

    read -p "Elige una opcion: " opcion

    case $opcion in
        1)  read -p "Escribe el primer numero: " num1
            read -p "Escribe el segundo numero: " num2
            echo "Resultado: $(sumar $num1 $num2)"
            ;;
        2)  read -p "Escribe el primer numero: " num1
            read -p "Escribe el segundo numero: " num2
            echo "Resultado: $(restar $num1 $num2)"
            ;;
        3)  read -p "Escribe el primer numero: " num1
            read -p "Escribe el segundo numero: " num2
            echo "Resultado: $(dividir $num1 $num2)"
            ;;
        4)  read -p "Escribe el primer numero: " num1
            read -p "Escribe el segundo numero: " num2
            echo "Resultado: $(multiplicar $num1 $num2)"
            ;;
        0)  echo "Saliendo del programa."
            exit 0
            ;;
        *)  echo "Opcion no valida. Intentalo de nuevo."
            ;;
    esac
done
