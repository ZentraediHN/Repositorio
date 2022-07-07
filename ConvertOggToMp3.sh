#!/bin/bash

# Script para convertir archivos de audio .ogg a mp3
#---------------------------------------------------

for i in *ogg;
do
ogg123 -d wav -f - "$i" | lame - "${i/ogg/mp3}";
done
