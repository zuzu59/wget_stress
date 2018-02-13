#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171127.1456

sudo pkill -9 wget

zurl="https://test-www-backend.epfl.ch/index.fr.html"
#zurl="https://test-www-proxy.epfl.ch/index.fr.html"
zspeed=40
znbtests=10

echo -e "./zbench.sh "$zurl $zspeed $znbtests
./zbench.sh $zurl $zspeed $znbtests
