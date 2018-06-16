#! /bin/bash

#autor: yo


echo "escribe archivo a verificar"
read archivo

if [ -a $archivo ]; then
      echo "el archivo existe"
    if [ -x $archivo ]; then
         echo "archivo EJECUTABLE"
    fi
    
    if [ -d $archivo ]; then
          echo "es UN DIRECTORIO"
          
    fi
    
    else
        echo "ARCHIVO INEXISTENETE"
fi
