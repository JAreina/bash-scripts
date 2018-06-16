#!/bin/bash

DATE=`date +%Y-%m-%d-%H-%M`


padre="$HOME/baca"
origen="$HOME/baca/origen"
instantanea= "$HOME/baca/snapshot.file"
destino="$HOME/baca/destino"

echo "CARPETA ACTUAL"
echo `pwd` &&

echo " CREANDO COPIA ..................." &&
if [ ! -f ${destino}/todo.tar.gz ]
then
tar --listed-incremental=${instantanea} -czvpf todo.tar.gz ${origen}
echo " MOVIENDO A  .......... ${destino}" 
mv todo.tar.gz ${destino}/todo.tar.gz
cp $instantanea snapshot-1.file
else
echo " NUEVOS ARCHIVOS:"
echo " ****************"
tar --listed-incremental=snapshot-1.file  -czvpf ${DATE}-incremental.tar.gz ${origen}
echo " MOVIENDO A ${destino}" 
mv $DATE-incremental.tar.gz ${destino}/$DATE-incremental.tar.gz
fi






