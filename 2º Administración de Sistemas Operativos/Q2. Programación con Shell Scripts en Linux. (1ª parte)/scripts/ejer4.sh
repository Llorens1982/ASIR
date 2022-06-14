#!/bin/bash
SUMA=0
#CONTAREMOS EL NUMERO DE ARCHIVOS CON
echo "El directorio actual contiene" $(find * | wc -l)  "archivos"
echo " "
#CON (du -b) CALCULARA EN BYTES CADA ARCHIVO, NO UTILICE -h AL NO DEJARME OPERAR EN DECIMAL.
for i in `du -b * | cut -f1`; do
   		SUMA=`expr $SUMA + $i` 	
		done	
echo "$SUMA  bytes TOTAL"
