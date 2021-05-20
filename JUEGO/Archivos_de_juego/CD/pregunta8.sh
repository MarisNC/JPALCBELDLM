#!/bin/bash

sleep 2
cat texto8.txt

while true; do
read -p "-->$" key8
        if [ "$key8" == "sudo su" ] || [ "$key8" == "sudo -i" ]
        then
                echo "¡Bien hecho! Sólo evita que se te suban los humos a la cabeza y recuerda que no eres competencia para mí. (Recuerda poner tu password)"

                read -p "[password]: " -s input
                break
        else
                echo "Algo hiciste mal para equivocarte con esta pregunta...Intentalo de nuevo"
        fi
done

sleep 1
echo -e "\nBienvenido a Root!"
