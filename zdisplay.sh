#!/bin/bash
#petit script pour afficher les durées de chargement des pages chargées
#zf171127.1450

find ./poubelle -name duree.txt -exec cat {} \; | sort


