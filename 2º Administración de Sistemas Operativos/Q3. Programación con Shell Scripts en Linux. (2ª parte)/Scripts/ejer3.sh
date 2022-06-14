#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Por favor indique un login de un usuario."

else
	USUARIO=$(cat /etc/passwd | grep -i $1 | cut -d':' -f1)
	CONECT=$(w -hs | cut -f1 -d ' ')

	if [ $USUARIO = $1 ]; then	
		if [ $CONECT = $1 ]; then
		HORA=$(who | tr -s " "| cut -d " " -f 4)		
		NOMBRE=$(cat /etc/passwd | grep -i $USUARIO | cut -d':' -f5 | tr ',' ' ')
			echo "El usuario $CONECT con el nombre $NOMBRE esta conectado desde las $HORA horas"

		else 
			echo "El usuario no esta conectado"
		fi	
	else
		echo "usuario no exite, por favor introduzca otro nombre"	
  fi
fi
