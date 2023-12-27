#!/bin/bash

# Obtener la fecha y hora actual
fecha_actual=$(date "+%Y-%m-%d %H:%M:%S")

# Mostrar la fecha en la salida estándar
echo "Fecha del sistema: $fecha_actual"

# En el crontab habría que poner lo siguiente:
# */5 * * * * /ruta/al/script/mostrar_fecha.sh >> /var/log/fechas.log 2>&1

