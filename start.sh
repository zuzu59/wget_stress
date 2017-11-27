#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171101.1716

znbtests=20
zspeed=20
zurl="https://www-test.epfl.ch/index.fr.html"

rm -Rf poubelle

function finish {
	watch -n 1 "ps ax |grep wget |wc"
	exit
}
trap finish INT


for i in `seq 1 $znbtests`;
do
        /usr/bin/time --format='la commande a duré %e secondes' ./stress.sh $zurl $zspeed 
        ps ax |grep wget |wc
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
exit






#read -p "appuyer une touche pour continuer"
#watch -n 1 "ps ax |grep wget |wc"



