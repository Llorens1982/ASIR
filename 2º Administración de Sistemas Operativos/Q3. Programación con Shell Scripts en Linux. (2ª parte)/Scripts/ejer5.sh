#!/bin/bash
read -p "Meta un objeto:" OBJETO
#si el objeto existe
if [ -e $OBJETO ]; then 
	#si es un fichero
	if [ -f $OBJETO ]; then 
		echo "El objeto introducido es un archivo"
		#si no esta vacio
		if [ -s $OBJETO ]; then 
			echo "Su contenido es:"
			cat $OBJETO | more
		fi
	else
		# si es un directorio
		if [ -d $OBJETO ]; then 
			echo "El objeto introducido es un directorio"
			CONTENIDO=$(ls $OBJETO -lai)
			NUMLINEAS=$(echo $CONTENIDO | wc -l)
			# si no está vacio
			
			if [ $NUMLINEAS -gt 3 ]; then 
				echo $CONTENIDO #<--mostramos contenido
			else #esta vacio
				echo "No hay elementos"
			fi
		fi
	fi
#el objeto no existe
else 
	echo "El objeto introducido no existe"
fi
