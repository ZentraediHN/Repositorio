#!/bin/bash
#Script para crear directorios o carpetas segun los archivos que existan y moverlos a la vez
# a cada carpeta creada.

for FILE in *txt *log;											#se busca en el directorio recursivamente cada archivo en terminacion "txt" o "log"
do
	NEWFILE=`echo $FILE | sed 's/.txt$//'|sed 's/.log$//'` ; 	#A cada archivo encontrado se le elimina la terminacion"txt"
	if [ -d $NEWFILE ]											# Se comprueba si existe el directorio con el nuevo nombre creado "Newfile"
		then
		mv $FILE $NEWFILE										# De existir el directorio "Newfile" solo se procede a mover el archivo
	else
		mkdir "$NEWFILE";										#Sino se crea cada carpeta con el njouevo nombre
		mv $FILE $NEWFILE										#Y se procede a mover cada archivo original a cada carpeta creada respectivamente.
	fi
done
