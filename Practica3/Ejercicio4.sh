#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Sintaxis incorrecta. Uso: $0 <archivo_datos>"
    exit 1
fi

archivo_datos="$1"

if [ ! -f "$archivo_datos" ]; then
    echo "Error: El archivo de datos '$archivo_datos' no existe."
    exit 1
fi

while read -r opcion nombre apellido1 apellido2 grupo; do
    case $opcion in
        alta)
            if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then
                echo "Error: Datos incorrectos en el archivo."
                continue
            fi

            identificativo="alu$(echo "$apellido1" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$apellido2" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$nombre" | cut -c 1 | tr '[:upper:]' '[:lower:]')"
            grupo=${grupo:-$identificativo}

            sudo groupadd "$grupo"
            sudo useradd -m -s /bin/bash -G "$grupo" -c "$nombre $apellido1 $apellido2" -U "$identificativo"

            echo "Usuario dado de alta: $identificativo"
            ;;
        baja)
            if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then
                echo "Error: Datos incorrectos en el archivo."
                continue
            fi

            identificativo="alu$(echo "$apellido1" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$apellido2" | cut -c 1-2 | tr '[:upper:]' '[:lower:]')$(echo "$nombre" | cut -c 1 | tr '[:upper:]' '[:lower:]')"
            sudo userdel -r "$identificativo"

            echo "Usuario dado de baja: $identificativo"
            ;;
        *)
            echo "Error: Opción incorrecta en el archivo."
            continue
            ;;
    esac
done < "$archivo_datos"

exit 0
