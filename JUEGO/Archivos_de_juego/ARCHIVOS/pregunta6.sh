#!/bin/bash

while true; do
	read -p "-->$" key6
	if [ "$key6" == "./CONFIDENCIAL.sh" ]
	then
		nano CONFIDENCIAL.sh
		./CONFIDENCIAL.sh
		while [ $? != 0 ]; do
			echo -e " \nTe equivocaste jajaja, no me sorprende. Vuelve a intentarlo.\n "
			sleep 6
			nano CONFIDENCIAL.sh
			./CONFIDENCIAL.sh
		done
		if [ $? == 0 ]; then
			echo -e " \nOye wowww, lo lograste. No te sientas mucho eh, no es para tanto."
		fi
		break
	else
		echo "Tienes que abrir el archivo. Por si no lo sabes es asi: ./Tuarchivo.extension"
	fi
done
