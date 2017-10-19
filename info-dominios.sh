#!/bin/bash

clear
echo -n "INGRESA DOMINIO AL QUE IR -> "
read dominio
if [ -z $dominio ];then
echo "HAY QUE INGRESAR EL DOMINIO"
exit
fi
echo
echo "COMIENZA ..."
echo
read -p "PRESIONA ENTER"
firefox &
sleep 3
firefox -new-tab http://www.intodns.com/$dominio
sleep 1
firefox -new-tab http://http://www.dnsstuff.com/tools#dnsReport|type=domain&&value=$dominio &
sleep 1

