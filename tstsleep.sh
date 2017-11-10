#!/bin/bash
#petit script tout simple pour tester mon script zsleep

#zf171109.1557

znbtests=1

function finish {
#        watch -n 1 "ps ax |grep wget |wc"
        exit
}
trap finish INT

for i in `seq 1 $znbtests`;
do
#        echo -ne "le chargement de la page à pris "
	TIMEFORMAT="%3R" ; time ./zloop.sh $1
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
exit

