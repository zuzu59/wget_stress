#!/bin/bash
for i in `seq 1 10`;
do
        echo $i
	wget -r -l 1 -np http://www-test.epfl.ch/ -o /dev/null &
	sleep 0.1


done


