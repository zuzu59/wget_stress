#!/bin/bash
#petit script pour lancer une campagne de stress sur une site web
#zf171127.1515


# Teste si les arguments sont bien passés
if (( $# < 1 ))
then
	echo -e "\nusage: ./zbench.sh url_du_site nombre_de_tests_par_seconde nombre_de_fois\n"
	exit
fi


zurl=$1
zspeed=$2
znbtests=$3

rm -Rf poubelle

function finish {
	watch -n 1 "ps ax |grep wget |wc"
	exit
}
trap finish INT


for i in `seq 1 $znbtests`;
do
        /usr/bin/time --format='la commande a duré %e secondes' ./zstress.sh $zurl $zspeed 
        ps ax |grep wget |wc
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
#exit

echo "Tests terminés !"
sleep 3

#read -p "appuyer une touche pour continuer"
#watch -n 1 "ps ax |grep wget |wc"

./zdisplay.sh



