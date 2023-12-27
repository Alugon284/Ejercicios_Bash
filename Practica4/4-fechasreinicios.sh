#!/bin/bash

# Obtener la fecha y hora actual
fecha_actual=$(date "+%Y-%m-%d %H:%M:%S")

# Registrar la fecha en el archivo de reinicios
echo "Reinicio del sistema: $fecha_actual" >> /var/log/reinicios.txt

# En el crontab habría que incluir lo siguiente:
# @reboot /ruta/al/script/registro_reinicios.sh

