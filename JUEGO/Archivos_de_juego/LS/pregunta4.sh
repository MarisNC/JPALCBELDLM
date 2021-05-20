#!/bin/bash
cat texto4.txt
sleep 200000 &
while true; do	
read -p "-->$" key4 key44

	if [ "$key4" == "ps" ]
	then
		if [ "$key44" == "aux | grep sleep" ]
		then
			ps aux | grep sleep
		else
			echo "Comando erroneo"
		fi
	
	elif [ "$key4" == "kill" ]
	then
		if ! [[ "$key44" =~ ^[0-9]+$ ]]
        	then
            		echo "The numbers Mason...What do they mean?"
		else
			chmod +x ./pregunta44.sh
			./pregunta44.sh $key44
			if [ $? -eq  0 ]
			then
				break
			else
				echo "Intentalo de nuevo"
			fi	
			
		fi		
	else
		echo "Comando erroneo"
	fi
done
