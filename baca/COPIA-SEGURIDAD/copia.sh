#!/bin/bash

DATE=`date +%Y-%m-%d-%H-%M`
#bash $HOME/path/copiaGenerico.sh



destino="$HOME/BACKUPSS"



echo "CARPETA ACTUAL................."
echo `pwd`
origen= ${pwd}

if [ ! -d ${HOME}/BACKUPSS ] 
then
mkdir $HOME/BACKUPSS
fi
cd .

if [ ! -f $HOME/BACKUPSS/todo.tar.gz ]
then
echo " CREANDO COPIA INICIAL ..................." 

tar --listed-incremental=snapshot.file -czvpf todo.tar.gz .
echo " MOVIENDO A  .......... ${destino}" 
mv todo.tar.gz ${destino}/todo.tar.gz
mv snapshot.file snapshot-1.file
else
echo " NUEVOS ARCHIVOS:"
echo " ****************"
tar --listed-incremental=snapshot-1.file  -czvpf ${DATE}-incremental.tar.gz .
echo " MOVIENDO A ${destino}" 
mv $DATE-incremental.tar.gz ${destino}/$DATE-incremental.tar.gz
fi






