#!/bin/bash

while true; do
    fecha_actual=$(date "+%Y-%m-%d %H:%M:%S")
    usuarios_conectados=$(who | awk '{print $1}' | sort -u | wc -l)
    echo "$fecha_actual $usuarios_conectados" >> /tmp/usuarios
    sleep 120
done

