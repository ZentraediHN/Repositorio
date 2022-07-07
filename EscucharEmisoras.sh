#!/bin/bash
echo -e '\033[1;34mEscoja una Emisora:\033[0m'
echo
echo "1) Avro Film"
echo "2) Avro Klassiken"
echo "3) Radio Francia Internacional Espanol"
echo "4) Deluxe Radio"
echo "5) Klassik Radio"
echo "6) Klassik Movie"
echo "7) Estero Sula 100.1 FM"
echo "8) FM Fama 97.7 FM"
echo "9) NHK World Radio Japon"
echo
# Elejir una emisora y establecer una variable
echo -n "Elija una emisora del 1 al 9: "; read Emisora 

case $Emisora in
1)   mplayer http://icecast.omroep.nl/radio4-film-bb-mp3;;
2)   mplayer http://icecast.omroep.nl/radio4-klassieken-bb-mp3;;
3)   mplayer http://stream.rfi.fr/2503/rfi_en_espagnol/rfiespagnol.mp3;;
4)   mplayer http://am.audio1.fr.ipercast.net/deluxemusic.tv/radio_web/mp3;;
5)   mplayer http://edge.live.mp3.mdn.newmedia.nacamar.net/klassikradio128/livestream.mp3;;
6)   mplayer http://edge.live.mp3.mdn.newmedia.nacamar.net/klassikradiomovie128/livestream.mp3;;
7)   mplayer http://96.31.90.115:8230;;
8)   mplayer http://188.165.236.90:6298;;
9)   mplayer http://www3.nhk.or.jp/rj/podcast/mp3/spanish.mp3;;
*)   echo Debe indicar un número del 1 a 9;;
esac
