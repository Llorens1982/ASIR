#!/bin/bash
# examen - Ejercicio 2
if [ $# -eq 2 ]; then
	if [ -a $1 ] && [ -a $2 ]; then
		LIN1=$(cat $1 | wc -l)
		LET1=$(cat $1 | wc -m)
		LIN2=$(cat $2 | wc -l)
		LET2=$(cat $2 | wc -m)
		if [ $LIN1 -gt $LIN2 ]; then
			echo "El fichero $1 ($LIN1 lineas), tiene más lineas que $2 ($LIN2 lineas)"
		else 
			echo "El fichero $2 ($LIN2 lineas), tiene más lineas que $1 ($LIN1 lineas)"
		fi
		if [ $LET1 -gt $LET2 ]; then
			echo "El fichero $1 ($LET1 letras), tiene más letras que $2 ($LET2 letras)"
		else
			echo "El fichero $2 ($LET2 letras), tiene más letras que $1 ($LET1 letras)"
		fi			
	else 
		if [ ! -f $1 ]; then		
			echo "Error: El fichero $1 no existe"
		fi
		
		if [ ! -f $2 ]; then	
			echo "Error: El fichero $2 no existe"
		fi
	fi
else 
	echo "Uso: ejer1.sh <fichero1> <fichero2>"
fi


