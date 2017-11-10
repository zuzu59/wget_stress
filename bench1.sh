#!/bin/bash
#petit script tout simple pour stresser un serveur web avec wget
#zf171109.1616

# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./bench1.sh nombre_de_tests_par_seconde\n"
	exit
fi

#nombre de tests par seconde
zspeed=$1
#calcul la durée en chaque test en milisecondes
zsleep=`jq -n 1/$zspeed*1000`
#calcul le nombre de boucle pour zsleep
zloop=`jq -n $zsleep*320-250`
#le converti en entier
zloop=${zloop%.*}

cd poubelle

for i in `seq 1 $zspeed`;
do
#        echo $i
#	wget -p https://www-test.epfl.ch/index.fr.html --no-check-certificate -o /dev/null -b
	wget https://www-test.epfl.ch/index.fr.html --no-check-certificate -o /dev/null -b
# 2> /dev/null
	../zsleep.sh $zloop
done
