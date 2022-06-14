
#!/bin/bash
#Se comprueba si el usuario es "root", en caso contrario advertimos de ello, ya que
if [ $EUID -ne 0 ]; then 
	echo "Se necesita ser usuario "root" para poder usar este script"
else
	
	if [ ! -d /root/backup/ ];then #si no existe la carpeta backup la creamos
	$(mkdir /root/backup/)
	fi
#-cjvf: opciones del tar (c crear fichero, j comprimir con algoritmo bz2, v modo verbose y f dispositivo fichero).
$(tar -cjvf /root/backup/home.`date +%B%y`.tar.bz2 /home)

fi

