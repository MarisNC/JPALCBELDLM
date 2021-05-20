#!/bin/bash
cd ~/JUEGO
cat Archivos_de_juego/TEXT/texto1.txt
while true; do	
read -p "-->$" key1
	if [ "$key1" == "cd CD" ]
	then
		cd Archivos_de_juego/CD
		chmod +x ./pregunta2.sh	
		./pregunta2.sh
		break
	else
		echo "¿Cuál de estos comandos permite cambiar entre directorios? Dirígete al directorio con el nombre del comando. Chance con minusculas primero y luego mayusculas."
	fi
done
