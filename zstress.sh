#!/bin/bash
#petit script tout simple pour stresser un serveur web avec wget
#zf171127.1359

# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./bench1.sh nombre_de_tests_par_seconde\n"
	exit
fi

#url à tester
zurl=$1
#nombre de tests par seconde
zspeed=$2
#calcul la durée en chaque test en secondes
zsleep=`jq -n 1/$zspeed`

##calcul la durée en chaque test en milisecondes
#zsleep=`jq -n 1/$zspeed*1000`
##calcul le nombre de boucle pour zsleep
#zloop=`jq -n $zsleep*320-250`
##le converti en entier
#zloop=${zloop%.*}


for i in `seq 1 $zspeed`;
do
#        echo $i
	./zwget.sh $zurl &
	sleep $zsleep
#	./zsleep.sh 1
done
