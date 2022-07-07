#!/bin/bash

for i in *wav;
do
lame "$i" "${i/wav/mp3}" -b 256;
done