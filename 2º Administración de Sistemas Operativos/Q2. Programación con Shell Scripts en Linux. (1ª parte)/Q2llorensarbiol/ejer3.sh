#!/bin/bash
#VARIABLES  
ERROR=0		#ERROR SI ES 0 EJECUTA                 
#SE COMPRUEBA SI HAY ALGUN PARAMETRO
for ARG in $*; do
	if  [ -z $ARG ] ; then  
		echo "Usa: ejer2.sh fichero1 fichero2"
		ERROR=1	
	fi

#COMPROBAMOS SI EXISTEN LOS FICHEROS
	if  ! [ -f $ARG ]; then
		echo  "El fichero $ARG no existe"
		ERROR=1
	fi

#VARIABLES
SUMA=0 # SE UTILIZA LA VARIABLE CON VALOR 0 PARA QUE SE VAYA INCREMENTANDO EL VALOR DE i
	if [ $ERROR -eq 0 ] ; then		
		for i in `du -b $ARG | cut -f1`; do
   		SUMA=`expr $SUMA + $i` 	
		done	
	
	echo "La suma total de los archivos introducidos son $SUMA bytes"
	fi
done


