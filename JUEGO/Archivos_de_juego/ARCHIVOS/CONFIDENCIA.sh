#!/bin/bash

# Este archivo CONFIDENCIAL devuelve la serie de numeros que el presidente
# de Linux usa para mandar lanzar los misiles nucleares. Sin emabargo hay
# errores en las lineas comentadas ademas de que falta una linea.

arreglo=( 7 8 3 1 -1 -2 -2 )
contador=0
resultado=""

for i in ${arreglo[@]}
do
	num=$i
	if [ ${arreglo[contador]} -eq ${arreglo[contador+1]} ]
	then
		continue
	elif [[ ${arreglo[contador]} -gt ${arreglo[contador+1]} ]] ##
	then
		num=$($i + 1) ##
		resultado=$resultado$num
	else
		num=$($i - 1) ##
		resultado=$resultado + $num ##

	let contador+=1
done
echo '$resultado' ##

if [ $resultado -ne "69420" ]; then
	exit 1
fi
