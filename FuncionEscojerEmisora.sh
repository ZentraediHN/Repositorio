#!/bin/bash

EscojerEmisora() {
	echo -e '\033[1;34mEscoja una Emisora:\033[0m'
	echo
	echo "1) Avro Film"
	echo "2) Avro Klassiken"
	echo "3) Radio Francia Internacional Espanol"
	echo "4) Deluxe Radio"
	echo "5) Classic FM"
	echo "6) Klassik Radio"
	echo "7) Klassik Movie"
	echo "8) Klassik New Classics"
	echo "9) Klassik Beethoven"
	echo "10) Klassik Christmas"
	echo "11) Estero Sula 100.1 FM"
	echo "12) FM Fama 97.7 FM"
	echo "13) NHK World Radio Japon"
	echo "14) Euronews Radio"
	echo "15) 181.fm Christmas Classics (Traditional)"
	echo "16) 181.fm Christmas Oldies"
	echo "17) The Christmas Channel"
	echo "18) 181.fm Christmas Standards"
	echo "19) 1.FM - Always-Christmas Radio"
	echo "20) Christmas Melody - Best Beautiful Christmas Songs"
	echo "21) North Pole Radio"
	echo "22) Tiempo de Navidad"
	echo "23) Exit"
	echo
	
	# Elejir una emisora y establecer una variable
	echo -n "Elija una emisora del 1 al 22: "; read Emisora 
	
	case $Emisora in
	1)   mplayer http://icecast.omroep.nl/radio4-bb-mp3;;
	2)   mplayer http://icecast.omroep.nl/radio4-klassieken-bb-mp3;;
	3)   mplayer http://live02.rfi.fr/rfienespagnol-64.mp3;;
	4)   mplayer http://am.audio1.fr.ipercast.net/deluxemusic.tv/radio_web/mp3;;
	5)   mplayer http://8563.live.streamtheworld.com/CLASSICFM.mp3;;
	6)   mplayer http://stream.klassikradio.de/live/mp3;;
	7)   mplayer http://stream.klassikradio.de/movie/mp3;;
	8)	 mplayer http://stream.klassikradio.de/newclassics/mp3;;
	9)   mplayer http://stream.klassikradio.de/beethoven/mp3;;
	10)   mplayer http://stream.klassikradio.de/christmas/mp3;;
	11)   mplayer http://96.31.90.115:8230;;
	12)   mplayer http://188.165.236.90:6298;;
	13)   mplayer http://www3.nhk.or.jp/rj/podcast/mp3/spanish.mp3;;
	14)	  mplayer http://euronews-04.ice.infomaniak.ch/euronews-04.aac;;
	15)	mplayer http://108.61.73.118:8124;;
	16) mplayer http://108.61.73.118:14108;;
	17)	mplayer http://91.121.219.80:8018;;
	18)	mplayer http://184.173.85.76:8118;;
	19)	mplayer http://185.33.21.112:11070;;
	20)	mplayer http://107.182.238.95:9185;;
	21)	mplayer http://85.25.217.22:8050;;
	22)	mplayer http://173.208.177.90:12526;;
	23)  echo salir;;
	*)   echo Debe indicar un número del 1 a 22;;
	esac
}

until [[ $Emisora -eq 23 ]]
do
	EscojerEmisora
done

