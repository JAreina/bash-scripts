#! /bin/bash

#autor: yo


echo -e "ingresa palabra: "
read palabra
echo
echo -e "la palabra fue $palabra"
echo 
echo -e "ingresa dos palabras "
read palabra1 palabra2
echo
echo -e "escribe varias palabrals"
read -e #se guarada en la variable default LLAMADA REPLY

echo
echo -e "las palabras fueron $REPLY"
echo 
echo -e "menciona tres herraientas"
read -a herramientas  #arreglo
echo
echo "tus heramientas son ${herramientas[0]}, ${herramientas[1]} y ${herramientas[2]}"
