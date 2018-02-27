#!/bin/bash
#petit script pour arrêter le service Apache
#zf180227.1429

watch -n 10 "sudo apachectl stop ; sudo apachectl status ; netstat -nat |grep LIST"


