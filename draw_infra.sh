#!/bin/bash
#petit script pour dessiner le graphe de l'infra à tester
#zf171129.1612

echo -e "si cela ne marche pas, il faut faire:\n\nsudo apt-get -y install graphviz\n"

dot -Tpng infra_www.epfl.ch.dot -o infra_www.epfl.ch.png

echo -e "\n\nc'est bon le graphe se trouve dans: infra_www.epfl.ch.png\n\n"
