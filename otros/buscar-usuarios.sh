#!/bin/bash
echo "ingresa nombre de usuario "
read usuario
if grep ^$usuario /etc/passwd;then
    echo "el usuario $usuario está en el sistema"
else 
    echo "el usuario $usuario no se encuentra"
fi

