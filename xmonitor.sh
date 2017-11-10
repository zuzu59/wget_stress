#!/bin/bash
#petit script tout simple pour monitorer la durée de chargement d'une page web. En fait cela mesure l'expérience utilisateur ;-)

#zf171109.1212

export TIMEFORMAT="%3R"

znbtests=300
zspeed=0.5

rm -Rf poubelle
mkdir poubelle
cd poubelle

function finish {
#        watch -n 1 "ps ax |grep wget |wc"
        exit
}
trap finish INT


for i in `seq 1 $znbtests`;
do
        echo -ne "le chargement de la page à pris "
	time wget -p -k https://www-test.epfl.ch/index.fr.html --no-check-certificate -o /dev/null
        sleep $zspeed
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
exit


