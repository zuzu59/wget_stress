#!/bin/bash
#petit script tout simple pour monitorer la durée de chargement d'une page web. En fait cela mesure l'expérience utilisateur ;-)

#zf171110.1457

znbtests=600
zspeed=0.5
zurl="http://www-test.epfl.ch/index.fr.html"
zwgetopt="-p -k"

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
	TIMEFORMAT="%3R" ; time wget $zwgetopt $zurl --no-check-certificate -o /dev/null
        sleep $zspeed
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
exit

