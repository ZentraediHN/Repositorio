#!/bin/bash

for i in *ogg;
do
ogg123 -d wav -f - "$i" | lame - "${i/ogg/mp3}";
done
