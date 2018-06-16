#!/bin/bash
clear
echo -n "NOMBRE A BUSCAR "
read nombre
if [ -z $nombre ];then
          echo "no escribistes el nombre"
          exit
fi
echo
echo -n "APELLIDO A BUSCAR "
read apellido
if [ -z $apellido ];then
          echo "no escribistes el apellido"
          exit
fi
echo
echo "Comienza búsqueda de $nombre $apellido"
read -p "PRESIONA ENTER PARA CONTINUAR"
firefox https://www.pipl.com/search/?q=$nombre+$apellido &
sleep 1
firefox -new-tab http://www.411.com/name/$nombre-$apellido &
sleep 1
firefox -new-tab http://cvgadget.com/person/$nombre/$apellido &
sleep 1
