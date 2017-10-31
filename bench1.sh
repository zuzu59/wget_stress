#!/bin/bash

cd poubelle

for i in `seq 1 10`;
do
        echo $i
	wget -r -l 1 -np -p http://www-test.epfl.ch/ -o /dev/null &
	sleep 0.1


done


