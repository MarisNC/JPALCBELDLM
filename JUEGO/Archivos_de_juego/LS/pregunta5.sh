#!/bin/bash

cat texto5.txt

while true; do
	read -p "-->$" key5
	if [ "$key5" == "chmod +x CONFIDENCIAL.sh" ] || [ "$key5" == "chmod -r CONFIDENCIAL.sh" ]
	then
		cd ~/JUEGO/Archivos_de_juego/ARCHIVOS
		chmod +x CONFIDENCIAL.sh
		echo "Cargando..."
		sleep 3
		echo "Ya es posible ejecutar el archivo."
		break
	else
		echo "No podras hackearnos. No tienes permisos de ejecucion de este archivo"
	fi
done
