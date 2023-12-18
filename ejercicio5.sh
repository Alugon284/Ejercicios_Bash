#!/bin/bash
incremento=1
while [ $incremento -le 5 ]
do
	echo $incremento
	(( incremento++ ))
done
