#!/bin/bash
echo "¡Muy bien!"
echo "Seguro de niño te dijeron que eras bien listx y te la creíste pero, ¿podrás contestar esta pregunta?"
sleep 1
cat texto2.txt
while true; do	
read -p "-->$" key2
	if [ "$key2" == "echo OPCION1" ] #azul
	then		
		RED='\033[0;31m'
		NC='\033[0m' # No Color
		printf "${RED}ARCHIVOS en rojo${NC}"
		break

	elif [ "$key2" == "echo OPCION2" ] #rojo
	then
		BLUE='\033[0;34m'
		NC='\033[0m' # No Color
		printf "${BLUE}ARCHIVOS en azul${NC}"
		break

	else 
	echo "Incorrecto. Utiliza el comando echo <OPCION> para imprimir el valor de la variable que quieras."

	fi
done

