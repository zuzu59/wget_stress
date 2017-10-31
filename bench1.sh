#!/bin/bash

cd poubelle

for i in `seq 1 10`;
do
        echo $i
	wget -r -l 1 -np -p https://www-test.epfl.ch/ --no-check-certificate -o /dev/null &
	sleep 0.1


done


