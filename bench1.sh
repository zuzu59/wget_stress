#!/bin/bash
#petit script tout simple pour stresser un serveur web avec wget
#zf171101.1147

cd poubelle

for i in `seq 1 100`;
do
        echo $i
	wget -np -p https://www-test.epfl.ch/ --no-check-certificate -o /dev/null &
	sleep 0.01
done


