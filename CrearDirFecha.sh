#!/bin/bash
#Script para crear directorios o carpetas segun las fechas [año y mes] de los archivos que existan y moverlos a la vez
# a cada carpeta creada.

SAVEIFS=$IFS								#establecer el delimitador 
IFS=$(echo -en "\n\b")						#establecer el delimitador que sea un retorno o un 

for FILE in $(ls);							#se busca en el directorio recursivamente cada archivo en terminacion "txt" o el que se especifique
do
	if [ -f $FILE ];
		then
		NEWFILE=`stat -c%y $FILE | cut -c1-7`; #A cada archivo encontrado se tomara su fecha mes y año
		if [ -d $NEWFILE ];						# Se comprueba si existe el directorio con el nuevo nombre creado "Newfile"
			then
			mv $FILE $NEWFILE					# De existir el directorio "Newfile" solo se procede a mover el archivo
		else
			mkdir "$NEWFILE";					#Sino se crea cada carpeta con el nuevo nombre
			mv $FILE $NEWFILE					#Y se procede a mover cada archivo original a cada carpeta creada respectivamente.
		fi
	else
		echo -e "$FILE no es un regular file"
	fi
done
IFS=$SAVEIFS
