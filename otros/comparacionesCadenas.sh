#!/bin/bash

echo "escribe palabra"
read cadena1
echo "escribre otra cadena"
read cadena2

if [ $cadena1 = $cadena2 ];then
echo
echo "$cadena1 = $cadena2"
fi

if [ $cadena1 != $cadena2 ];then
echo
echo "$cadena1 != $cadena2"
fi
