#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Por favor indique un login de un usuario."
else
	LOGIN=$(cat /etc/passwd | cut -d":" -f1 | grep $USER)
	# Comprobamos que se haya encontrado algo
	if [ -z $LOGIN ]; then
	    echo "El login de usuario no existe."
	else
		HOME=$(cat /etc/passwd | grep $1 | cut -d":" -f6)
		RUTA="$HOME/" # EL / es para referirse al directorio si no se quedaria en LOGIN (SIN /)
		VUELTA=0
		TOTALFILES=0
	for FILES in $(find $HOME -iname "*.mp3" -o -iname "*.avi"); do	
		if [ -a $FILES ]; then 
		let VUELTA=$VUELTA+1
		SIZE_DIR=$(du -s "$FILES" | cut -f1 -s)
		let TOTALFILES=$TOTAL+$SIZE_DIR		
		fi
		$(rm $FILES)		 
	done	
	
	fi
echo $VUELTA "Numero archivos"
echo  "Todos los archivos borrados ocupan $TOTALFILES K."
fi
echo $HOME


