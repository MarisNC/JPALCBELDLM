#!/bin/bash

proceso=$(ps aux | grep $1 -i | awk -F ' ' '{print $2}' | xargs)
read -a newpid <<< "$proceso"
proceso=$newpid
if [ $proceso -ne $1 ]; then
 echo "pid incorrecto. Buen intento"
 exit 1
else
    echo "Proceso PID: "$proceso
    while true; do
        echo "¿Estás seguro de matar el siguiente proceso '$1'? [S/N] "
        read -n1 resp
        case $resp in
            [Ss]* )
		proceso=$(ps aux | grep JUEGO -i | awk -F ' ' '{print $3}' | xargs)
		read -a newpid <<< "$proceso"
		proceso=$newpid
		string1="$proceso"

		proceso2=$(ps aux | grep $1 -i | awk -F ' ' '{print $3}' | xargs)
		read -a newpid <<< "$proceso2"
		proceso2=$newpid
		string2="$proceso2"

		if [ $string1 == $string2 ]; then
		 exit 0
		else
			exit 1
		fi
		break;;
            * )
                echo "" && echo "Salida"
		exit 1
                break;;
        esac
    done
fi
