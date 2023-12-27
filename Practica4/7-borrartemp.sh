#!/bin/bash

dia_semana=$(date "+%w")

if [ "$dia_semana" -eq 0 ]; then
    rm -rf /tmp/*
fi

# En el crontab habría que poner:
# 0 2 * * 0 /ruta/al/script/borrartemp.sh
