#!/bin/bash

fecha_actual=$(date "+%Y%m%d-%H%M%S")
tar -czf "/root/copia_etc_$fecha_actual.tgz" /etc
echo "Copia de seguridad de /etc generada en /root/copia_etc_$fecha_actual.tgz"

