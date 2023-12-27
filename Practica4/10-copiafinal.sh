#!/bin/bash

fecha_actual=$(date "+%Y%m%d-%H%M%S")
fecha_diaria=$(date "+%m_%d_%Y")

if [ "$(date '+%w')" -eq 0 ]; then
    tar -czf "/copia_seguridad/completa/copia_completa_$fecha_actual.tgz" /home /etc /root
else
    tar -czf "/copia_seguridad_incremental/$fecha_diaria/copia_diaria_$fecha_actual.tgz" /etc
fi

date "+%H:%M:%S" > "/copia_seguridad/completa/fecha.txt"

echo "Copia de seguridad generada en la carpeta correspondiente."

