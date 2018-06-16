#!/bin/bash

echo "INFORMACION DEL SISTEMA"
echo
echo "estado memoria ram"
free
echo
echo "USO DISCO DURO"
df -h
echo
echo "VERSION DEL SISTEMA"
cat /proc/version
echo 
echo "VERSION DISTRIBUCION"
cat /etc/issue
