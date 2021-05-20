#!/bin/bash

proceso=$(ps aux | grep $1 -i | awk -F ' ' '{print $2}' | xargs)
read -a newpid <<< "$proceso"
proceso=$newpid
if [ $proceso -ne "$1" ]; then
 echo "El proceso no existe"
 exit 1
else
    echo "Proceso PID: "$proceso
    while true; do
        echo "¿Estás seguro de matar el siguiente proceso '$1'? [S/N] "
        read -n1 resp
        case $resp in
            [Ss]* )
                echo ""
                echo "Matando el/los proceso(s)..."
                for i in $proceso; do kill $i; done
                echo "Proceso(s) Muerto(s): " $proceso
                break;;
            * )
                echo "" && echo "Salida"
		exit 1
                break;;
        esac
    done
fi

proceso=$(ps aux | grep $1 -i | awk -F ' ' '{print $2}' | xargs)
read -a newpid <<< "$proceso"
proceso=$newpid
if [ $proceso -eq "$1" ]; then
 echo "El proceso sleep 200000 aun existe"
 exit 1
fi
