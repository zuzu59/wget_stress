#!/bin/bash
#petit script pour exporter les durées de chargement des pages chargées dans un CSV
#zf180227.1059

find ./poubelle -name duree.txt -exec cat {} \; | sort > result.csv

echo -e "nb lignes: \c"
wc result.csv

echo -e "début des données:"
head result.csv
echo -e "fin des données:"
tail result.csv


