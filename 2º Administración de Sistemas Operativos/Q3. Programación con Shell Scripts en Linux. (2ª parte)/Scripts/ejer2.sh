#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Por favor indique un login de un usuario."
else
	LOGIN=$(cat /etc/passwd | cut -d":" -f1 | grep $1)
	# Comprobamos que se haya encontrado algo

	if [ -z $LOGIN ]; then
	    echo "El login de usuario no existe."
	else
		#VARIABLES
		
		HOME=$(cat /etc/passwd | grep $1 | cut -d":" -f6)
		RUTA="$HOME/" # EL / es para referirse al directorio si no se quedaria en LOGIN (SIN /)
		VUELTA=0 
		TOTALFILES=0
		SIZE_DIR=$(du -s "$FILES" | cut -f1 -s)
		#Bucle para contar el numeros de archivos		
		for FILES in $(find $RUTA -iname "*.mp3" -o -iname "*.avi"); do	
			if [ -a $FILES ]; then
				let VUELTA=VUELTA+1				
			fi
                done
		

	#Si $VUELTA es mayor de 25 ejecutara el bucle for files buscara y eliminara archivos .mp3,.avi 	        
		if [ $VUELTA -gt 25 ]; then
			for FILES in $(find $RUTA -iname "*.mp3" -o -iname "*.avi"); do
			$(rm $FILES)	
			done
	#Sino el bucle $FILEMAYOR buscara archivos mayores de 50M y los eliminara utilizo el -exec rm para hacerlo de otra manera. He añadido un echo por que no sabia como terminar el bucle. Si lo dejaba vacio no funciona.
		else	
		     	for FILEMAYOR in 
			$(find $RUTA -size +50M -iname "*.mp3" -o -iname "*.avi" -exec rm {} \;) ; do	
			echo 
			done	
		fi
	fi
fi
