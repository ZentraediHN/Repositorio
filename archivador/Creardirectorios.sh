#!/bin/bash
#Script para crear directorios o carpetas segun los archivos que hay en el directorio

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for FILE in $(ls);																			#se listan los archivos en el directorio actual mediante el comando 'ls'
do 
    if [ -f $FILE ];																		# comprobar que el archivo listado es un archivo regular y no un directorio o link
		then																				#en caso de ser archivo regular se procede a lo siguiente
		NEWFILE=`echo $FILE |sed -e 's/[[:space:]]//g' -e 's/[()]//g' -e 's/\.[a-z]*//I'`;			# se convierte el archivo sin extension 
		if [ -d $NEWFILE ];																	# Se comprueba si existe el directorio con el nuevo nombre creado "Newfile"
			then	
			mv $FILE $NEWFILE																# De existir el directorio "Newfile" solo se procede a mover el archivo
		else
			mkdir "$NEWFILE";																#Sino se crea cada carpeta con el njouevo nombre
			mv $FILE $NEWFILE																#Y se procede a mover cada archivo original a cada carpeta creada respectivamente.
		fi
    else
		echo -e "$FILE no es un regular file"												#de no comprobar que es un archivo regular 
	fi
done
IFS=$SAVEIFS
