#!/bin/bash

clear
usuario=$(whoami)
lineas="===================="
echo
echo $lineas
echo "BIENVENIDO "$usuario
echo $lineas
pwd
date
echo $lineas
echo
echo $lineas
ping -c2 github.io; ifconfig
echo $lineas
#wget facebook.com
#wget facebook.com 2> /dev/null #para que no muestre tanto texto en pantalla.descarga el index.html

read -p "PRESIONA ENTER"

