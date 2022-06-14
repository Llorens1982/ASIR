#!/bin/bash
#VARIABLES

USUARIO=$(cat /etc/passwd | grep -i $1 | cut -d':' -f1)
if  [ $1 = $USUARIO ] ; then
#ESTE BUCLE RECORRE CADA DIRECTORIO DEVUELTO POR LA INSTRUCCION "ls", Y EN CADA ITERACION LA VARIABLE "$DIR" TIENE UN NOMBRE DE DIRECTORIO DIFERENTE	
SUMA=0	
	for DIR in $(ls -d /home/$1/*/ | tr ' ' '_' ) ; do
	echo $(echo $DIR | tr '_' ' ') 
#CON tr LOGRAMOS CONVERTIR LOS ESPACIOS POR _ Y A LA HORA DE VOLVERLO A MOSTRAR SE LOGRA VOLVER A VERLO CORRECTAMENTE. (recuerda que en el shell los espacios cuentan)
	done
#CON du  NOS MOSTRARA EL TOTAL
echo $(du -sh $DIR | cut -f1)  "TOTAL"
	
else
	echo "usuario no existe"
fi
