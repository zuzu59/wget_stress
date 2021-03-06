#!/bin/bash
#petit script tout simple qui lance un wget et mesure le temps passé
#zf180215.1622

# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./zwget.sh url à tester\n"
	exit
fi

#time stamp du test
ztime=`date +%Y%m%d.%H%M%S-%N`
#wget options
#zwgetopt="-p -k"
zwgetopt="-p -k --header='Accept-Encoding: gzip'"

mkdir -p ./poubelle/$ztime
cd ./poubelle/$ztime

zt1=`date +%s.%N`
#wget $zwgetopt $1 --no-check-certificate -o /dev/null
wget $zwgetopt $1 -o /dev/null
zt2=`date +%s.%N`

zduree=`jq -n $zt2-$zt1`

rm -Rf test*

echo -e $ztime" "$zduree > duree.txt


