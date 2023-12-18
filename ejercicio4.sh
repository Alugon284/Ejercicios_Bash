#!/bin/bash
if [ -r $1 ]; then
	echo "El archivo existe y tienes permisos de lectura"
	cat $1
else
	echo "El fichero no existe o no tienes permisos de lectura"
fi

