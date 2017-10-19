#!/bin/bash
clear
echo -n "ingresa ruta del archivo de paginas "
read ruta
if [ -z $ruta ];then
echo "HAY QUE INGRESAR EL DOMINIO"
exit
fi
echo 
if [ ! -f $ruta ];then
echo "No existe el archivo o ruta errónea"
exit
fi
echo
echo "leyendo el contenido del archivo que está en $ruta"
read -p "presiona enter"
