#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171127.1456

zurl="https://www-test.epfl.ch/index.fr.html"
zspeed=50
znbtests=5

echo -e "./zbench.sh "$zurl $zspeed $znbtests
./zbench.sh $zurl $zspeed $znbtests
