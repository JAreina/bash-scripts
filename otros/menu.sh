#! /bin/bash

#autor: jareina

DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

echo "ingresa opcion"
echo "1 LIMPIAR PANTALLA"
echo "2 mostrar ruta actual"
echo "3 mostrar historial de comandos"
echo "4 salidr del programa"

echo "escribe una opcion"
read opcion

case $opcion in
 1) clear;;
 2) pwd;;
 3) cat ~/.bash_history > historial-comando.txt;;
 4) exit;;
 *) echo "opcion no válida"
 
 esac
