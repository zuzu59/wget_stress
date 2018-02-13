#!/bin/bash
#petit script pour afficher les durées de chargement des pages chargées
#zf180213.1532

find ./poubelle -name duree.txt -exec cat {} \; | sort -n -k 2

echo -e "70 percentile: \c"
find ./poubelle -name duree.txt -exec cat {} \; | awk '{print $2}' | sort -n | awk 'BEGIN{c=0} length($0){a[c]=$0;c++}END{p5=(c/100*30); p5=p5%1?int(p5)+1:p5; print a[c-p5-1]}'
echo -e "80 percentile: \c"
find ./poubelle -name duree.txt -exec cat {} \; | awk '{print $2}' | sort -n | awk 'BEGIN{c=0} length($0){a[c]=$0;c++}END{p5=(c/100*20); p5=p5%1?int(p5)+1:p5; print a[c-p5-1]}'
echo -e "90 percentile: \c"
find ./poubelle -name duree.txt -exec cat {} \; | awk '{print $2}' | sort -n | awk 'BEGIN{c=0} length($0){a[c]=$0;c++}END{p5=(c/100*10); p5=p5%1?int(p5)+1:p5; print a[c-p5-1]}'
echo -e "95 percentile: \c"
find ./poubelle -name duree.txt -exec cat {} \; | awk '{print $2}' | sort -n | awk 'BEGIN{c=0} length($0){a[c]=$0;c++}END{p5=(c/100*5); p5=p5%1?int(p5)+1:p5; print a[c-p5-1]}'

