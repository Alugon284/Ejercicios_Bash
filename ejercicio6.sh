#!/bin/bash
numerotabla=1
echo "TABLA DEL $1"
while [ $numerotabla -le 10 ]
do
	resultado=$(( $1 * $numerotabla ))
	echo "$1 x $numerotabla = $resultado"
	(( numerotabla++ )) 
done
