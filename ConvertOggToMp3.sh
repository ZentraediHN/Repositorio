#!/bin/bash

# Convertir archivos de audio .wav a .mp3
#----------------------------------------

for i in *wav;
do
lame "$i" "${i/wav/mp3}" -b 256;
done
