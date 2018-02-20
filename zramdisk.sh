#!/bin/bash
#petit script pour créer un ramdisk
#zf180220.1636

sudo umount ./poubelle/
sleep 1

rm -Rf ./poubelle
mkdir ./poubelle

sudo mount -t tmpfs -o size=1900M tmpfs ./poubelle/
df -h

