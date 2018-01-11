#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171127.1456

zurl="https://www.epfl.ch/index.fr.html"
zspeed=50
znbtests=15

echo -e "./zbench.sh "$zurl $zspeed $znbtests
./zbench.sh $zurl $zspeed $znbtests
