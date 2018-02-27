#!/bin/bash
#petit script tout simple pour stresser un serveur web avec wget
#zf171127.1459

#url à tester
zurl=$1
#nombre de tests par seconde
zspeed=$2
#calcul la durée en chaque test en secondes
zsleep=`jq -n 1/$zspeed*0.5`

for i in `seq 1 $zspeed`;
do
	./zwget.sh $zurl &
	sleep $zsleep
#	./zsleep.sh 1
done




