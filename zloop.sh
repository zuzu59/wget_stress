#!/bin/bash
#petit script tout simple pour exécuter un script plusieurs fois

#zf171109.1509

znbtests=10

#echo $1
zsleep=`jq -n $1*320-250`
#echo $zsleep

function finish {
#        watch -n 1 "ps ax |grep wget |wc"
        exit
}
trap finish INT


for i in `seq 1 $znbtests`;
do
        ./zsleep.sh $zsleep
done
trap - INT
#watch -n 1 "ps ax |grep wget |wc"
exit

