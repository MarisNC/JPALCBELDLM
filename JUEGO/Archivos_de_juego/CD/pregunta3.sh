#!/bin/bash
band=0
while true; do	
read -p "-->$" key3
	if [ "$key3" == "nano Diario.sh" ]
	then
		nano Diario.sh
		array=(`ls`)
		for archivo in ${array[*]}
		do
			if [ "$archivo" == "Diario.sh" ]
			then
				band=1				
				break
			fi			
		done
		if [ $band -eq 1 ]
		then
			echo "Si se creo tu archivo"
			break
		else
			echo "No se guardo tu archivo, tendras que hacerlo de nuevo"
		fi
	else
		echo "Ese no es el comando. Escribe nano Diario.sh para abrir el editor."
	fi
done

