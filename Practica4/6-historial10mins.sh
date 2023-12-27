#!/bin/bash

info_sistema=$(uptime)
usuarios_conectados=$(who)
hora_actual=$(date "+%H:%M:%S")

historial="$hora_actual $info_sistema $usuarios_conectados"

echo "$historial" >> /var/log/historial.txt

# En el crontab habría que poner lo siguiente:
# */10 * * * * /ruta/al/script/historial.sh

