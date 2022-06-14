#!/bin/bash
# SE USA LA VARIABLE (ERROR) SI	ES 0 SE EJECUTARA LA CONDICION DE  LOS ARCHIVOS SON MAYOR, MENOR O IGUAL 
ERROR=0
#SE COMPRUEBA SI HAY ALGUN PARAMETRO
if  [ -z $1 ] ; then  
	echo "Usa: ejer2.sh fichero1 fichero2"
	ERROR=1	
fi

if  [ -z $2 ]; then 
	echo "Usa: ejer2.sh fichero1 fichero2" 
	ERROR=1	
fi



#COMPROBAMOS SI EXISTEN LOS FICHEROS
if  ! [ -f $1 ]; then
	echo  "El fichero $1 no existe"
	ERROR=1
fi
if ! [ -f $2 ]; then
	echo  "El fichero $2 no existe"
	ERROR=1
fi

if [ $ERROR -eq 0 ] ; then

	#VARIABLES
	S1=$(cat $1 | wc -l)
	S2=$(cat $2 | wc -l)



	#COMPROBAMOS SI LOS ARCHIVOS SON MAYOR, MENOR O IGUAL  
	if [ $S1 -gt $S2 ]; then      
			echo "$1 con $S1 lineas es mayor que $2 con $S2 lineas"
	elif [ $S1 -lt  $S2 ]; then
			echo "$1 con $S1 lineas es menor que $2 con $S2 lineas"
	else
	 		echo "son iguales"
	fi

fi
