#!/bin/bash
find . -type f -perm -007 -exec realpath {} + > archivos_peligrosos.txt
echo "Lista de archivos peligrosos guardada en archivos_peligrosos.txt"
