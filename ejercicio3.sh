#!/bin/bash
if [ -f $1 ]; then
	echo "El archivo existe y es regular"
elif [ -d $1 ]; then
	echo "Es un directorio"
else
	echo "El fichero no existe"
fi

