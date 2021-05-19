#!/bin/bash

while true; do	
	read key10
	case $key10 in
		[sS]* )
		  echo -e "Pues no te librarás tan fácil de mí, no te sabes el comando.\nNi siquiera sabes el PID de mi proceso jiji"
		  break
		;;
		[nN]* )
		  echo "¿Es porque no te atreves? ¡Mátame! <s/n>"
		;;
		* ) 
		  echo "No balbucees, ¡mátame! <s/n>"
		;;
	esac
done

while true; do	
	read -p "-->$" key100 key101

		if [ "$key100" == "ps" ]
		then
			if [ "$key101" == "aux" ]
			then
				ps aux
			else
				echo "comando erroneo"
			fi
		
		elif [ "$key100" == "kill" ]
		then
			if ! [[ "$key101" =~ ^[0-9]+$ ]]
			then
		    		echo "The numbers Mason...What do they mean?"
			else
				chmod +x ./pregunta100.sh
				./pregunta100.sh $key101
				if [ $? -eq  0 ]
				then
					sleep 2
					echo "[[ SISTEMA CORROMPIDO ]]"
					sleep 1
					echo "[[ ARCHIVOS DANADOS ]]"
					sleep 1
					echo "[[ DIRECTORIOS ELIMINADOS ]]"
					sleep 1
					echo "[[ USUARIO BLOQUEADO ]]"
					sleep 2
					echo "[[ HACKEO COMPLETADO ]]"
					sleep 1
					echo -e " \nNos volveremos a encontrar Sysadmin"
					echo -e "Matando JUEGO..."
					sleep 3
					kill $key101
					break
				else
					echo "Mirenlo, se hace llamar SysAdmin pero mas bien es SysAdmenso"
				fi	
				
			fi		
		else
			echo "JAJAJAJ ESE NO ES EL COMANDO."
		fi

done
