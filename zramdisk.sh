#!/bin/bash
#petit script pour créer un ramdisk
#zf180215.1635


rm -Rf ./poubelle
mkdir ./poubelle

sudo mount -t tmpfs -o size=1500M tmpfs ./poubelle/
df -h

