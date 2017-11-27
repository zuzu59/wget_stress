#!/bin/bash
#petit script tout simple qui lance un wget et mesure le temps passé
#zf171127.1340

# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./zwget.sh url à tester\n"
	exit
fi

#time stamp du test
ztime=`date +%Y%m%d.%H%M%S-%N`
#wget options
zwgetopt="-p -k"

mkdir -p ./poubelle/$ztime
cd ./poubelle/$ztime

zt1=`date +%s.%N`
wget $zwgetopt $1 --no-check-certificate -o /dev/null
zt2=`date +%s.%N`

zduree=`jq -n $zt2-$zt1`
echo -e $ztime" "$zduree
