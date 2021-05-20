#!/bin/bash

sleep 1
cat texto9.txt

while true; do
read -p "-->#" key9 usuario
	if [ $key9 == "adduser" ] && [ $usuario != "" ]
	then
		sudo adduser loser1
		break
	else
		echo "Hmmm... comando incorrecto master"
	fi
done

echo "¡Muy bien! Ya tienes un amigo ¡Bravo!"
sleep 2
echo "Ahora crea al otro... Te habras dado cuenta que YO sigo en control! MUAAAJAJAJAA"
sleep 3

while true; do
read -p "-->#" key99 usuario2
        if [ $key99 == "adduser" ] && [ $usuario2 != "" ]
        then
                sudo adduser loser2
                break
        else
                echo "Hmmm... comando incorrecto master"
        fi
done

echo "Bellisimo!! Ya tienes a tu segundo amigo! Felicidades, pero...tus amigos son unos perdedores JAJAJA"
sleep 3
echo "Nonono... Literalmente... se llaman loser1 y loser2... ¿Acaso no te diste cuenta? Te dije que sigo en control" 

sudo userdel -f loser1
sudo userdel -f loser2
