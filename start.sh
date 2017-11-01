#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171101.1146

trap exit INT

while [ 1 ]; do
	/usr/bin/time --format='la commande a duré %e secondes' ./bench1.sh 5
	ps ax |grep wget |wc
done








read -p "appuyer une touche pour continuer"

watch -n 1 "ps ax |grep wget |wc"



