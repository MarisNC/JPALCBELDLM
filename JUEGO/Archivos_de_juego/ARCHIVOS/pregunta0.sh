#!/bin/bash
cd ~/JUEGO
cat Archivos_de_juego/TEXT/texto0.txt
while true; do	
read key0
	case $key0 in

		[sS]* )
		  break
		;;
		
		[nN]* )
		  echo "Pues no es lo que tu quieras. Asi que..."
		  sleep 2
		  break
		;;
		* ) 
		  echo "Hay de 2, no de 3 ni de 4. Es Si o No >:( "
		  echo "¿Aceptas el reto? s/n"
		;;
	esac
done

echo "¡¡¡¡¡¡COMENCEMOOOOOOOOOOOOOOOOOOOOOOOOSSSSSSSSSS!!!!!!"
sleep 2
