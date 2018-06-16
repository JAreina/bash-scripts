#!/bin/bash
clear 
echo -n "ingresa ruta del archivo que contiene los dominios"
read ruta
if [ -z $ruta ];then
echo "HAY QUE INGRESAR EL DOMINIO"
exit
fi
echo 
if [ ! -f $ruta ];then
echo "No existe el archivo"
exit
fi
echo
echo "leyyendo el contenido del archivo que está en $ruta"
read -p "presiona enter"

firefox &
sleep 3
for i in $(cat $ruta); do
   firefox -new-tab $i &
   sleep 1
done

