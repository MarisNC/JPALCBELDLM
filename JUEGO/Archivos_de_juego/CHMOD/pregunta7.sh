#!/bin/bash
while true; do	
read -p "-->$" key7 number

	if [ "$key7" == "sleep" ]
	then
		if ! [[ "$number" =~ ^[0-9]+$ ]]
        	then
            		echo "The numbers Mason...What do they mean?"
		else
			for ((i=1; i<=3; i++))
			do
				echo $i
				sleep 1
			done
			echo "Bueno ya paso mucho tiempo..."
			break
		fi		
	else
		echo "Comando erroneo. Utiliza el comando sleep <numero de segundos> para suspender este proceso durante ese tiempo."
	fi
done

