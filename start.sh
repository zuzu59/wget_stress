#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171101.1716

znbtests=20
zspeed=200

rm -Rf poubelle
mkdir poubelle

function finish {
	watch -n 1 "ps ax |grep wget |wc"
	exit
}
trap finish INT


for i in `seq 1 $znbtests`;
do
        /usr/bin/time --format='la commande a duré %e secondes' ./bench1.sh $zspeed
        ps ax |grep wget |wc
done
trap - INT
watch -n 1 "ps ax |grep wget |wc"
exit






#read -p "appuyer une touche pour continuer"
#watch -n 1 "ps ax |grep wget |wc"



