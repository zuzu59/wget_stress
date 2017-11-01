#!/bin/bash
#petit script tout simple pour stresser un serveur web avec wget
#zf171101.1147

# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./bench1.sh nombre_de_tests_par_seconde\n"
	exit
fi

zspeed=$1
zsleep=`jq -n 1/$zspeed`

cd poubelle

for i in `seq 1 $zspeed`;
do
        echo $i
	wget -np -p https://www-test.epfl.ch/ --no-check-certificate -o /dev/null&
	sleep $zsleep
done


