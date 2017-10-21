#!/bin/bash

trap bashtrampa INT #comando para la trampa bash
clear

trampabash()
{
echo "se ha detectado combinacion de teclas CTRL+C"

}

for i in `seq 1 15`; do
  echo "$i/15  - para salir de trampa"
  sleep 1
  done
  
  
  echo 
  echo "saliendo del script"
