#!/bin/bash
for ARG in $*; do    #<--BUCLE for PERMITE COMPROBAR TODAS LAS ENTRADAS.
	if ! [ ARG ]; then
        	echo "Usa: ejer1 fichero1 fichero2 …"
	elif test -x $ARG; then 
        	echo "El fichero " $ARG	 "  es ejecutable" 
	elif test -r $ARG; then
         	echo "El fichero " $ARG "  no es ejecutable"
	else 
        	echo "El fichero " $ARG "  no existe"

	fi
done


