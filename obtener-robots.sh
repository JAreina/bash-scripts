#!/bin/bash

clear 
echo -n "ingresa el dominio "
read dominio 
if [ -z $dominio ];then
echo "HAY QUE INGRESAR EL DOMINIO"
exit
fi
wget -q $dominio/robots.txt
cat robots.txt | grep 'Disallow' | awk '{print $2}'> oculto.txt

firefox &
sleep 3
for i in $(cat oculto.txt); do
   firefox -new-tab http://www.$dominio$i &
   sleep 1
done

