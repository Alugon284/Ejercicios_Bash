#!/bin/bash
read -p "Dime un numero:" numero1
read -p "Dime otro numero:" numero2
if [ $numero1 -gt $numero2 ]; then
	echo $numero1 es mayor que $numero2
elif [ $numero1 -lt $numero2 ] ; then
	echo $numero1 es menor que $numero2
else
	echo 'Los numeros son iguales'
fi
