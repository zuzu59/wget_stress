#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf171127.1456, zf210519.1143

sudo pkill -9 wget
./zramdisk.sh
sleep 2

zurl="https://dev-rdp.epfl.ch"
#zurl="https://test-www-backend.epfl.ch/index.fr.html"
#zurl="https://test-www-proxy.epfl.ch/index.fr.html"
#zurl="https://www.epfl.ch/index.fr.html"

# zspeed=70
# znbtests=20
zspeed=5
znbtests=40

echo -e "./zbench.sh "$zurl $zspeed $znbtests
./zbench.sh $zurl $zspeed $znbtests
