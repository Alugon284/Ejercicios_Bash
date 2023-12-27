#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: Sintaxis incorrecta. Uso: $0 alta/baja nombre [apellido1] [apellido2] [grupo]"
    exit 1
fi

opcion="$1"
nombre="$2"
apellido1="$3"
apellido2="$4"
grupo="$5"

case $opcion in
    alta)
        if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then
            echo "Error: Sintaxis incorrecta. Uso: $0 alta nombre apellido1 apellido2 [grupo]"
            exit 1
        fi

        identificativo="alu$(echo "$apellido1" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$apellido2" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$nombre" | cut -c 1 | tr '[:upper:]' '[:lower:]')"
        grupo=${grupo:-$identificativo}

        sudo groupadd "$grupo"
        sudo useradd -m -s /bin/bash -G "$grupo" -c "$nombre $apellido1 $apellido2" -U "$identificativo"

        echo "Usuario dado de alta: $identificativo"
        ;;
    baja)
        if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then
            echo "Error: Sintaxis incorrecta. Uso: $0 baja nombre apellido1 apellido2"
            exit 1
        fi

        identificativo="alu$(echo "$apellido1" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$apellido2" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$nombre" | cut -c 1 | tr '[:upper:]' '[:lower:]')"
        sudo userdel -r "$identificativo"

        echo "Usuario dado de baja: $identificativo"
        ;;
    *)
        echo "Error: Sintaxis incorrecta. Uso: $0 alta/baja nombre [apellido1] [apellido2] [grupo]"
        exit 1
        ;;
esac

exit 0
