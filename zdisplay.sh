#!/bin/bash
#petit script pour afficher les durées de chargement des pages chargées
#zf180213.1411

find ./poubelle -name duree.txt -exec cat {} \; | sort -k 2


