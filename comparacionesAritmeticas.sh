#! /bin/bash


#COMPARACIONES ARITMETICAS

echo "ingresa numero"
read numero1
echo
echo "ingresa otro"
read numero2
echo 

if [ $numero1 -eq $numero2 ];then
    echo "$numero1 es IGUAL a $numero2"
fi
if [ $numero1 -gt $numero2 ];then
    echo "$numero1 es mayor que $numero2"
    
    fi
    
if [ $numero1 -lt $numero2 ];then
    echo "$numero1 es menor que $numero2"
    
fi
