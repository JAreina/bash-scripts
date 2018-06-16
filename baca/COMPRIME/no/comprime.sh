#!/bin/bash

DATE=`date +%Y-%m-%d-%H-%M`
#bash

directorio=$1

destino="$HOME/COMPRIME"
              
EMPIEZA=$(date +%s)

echo ${EMPIEZA}

contarTiempoEjecucion()
{
dur=$(echo "$(date +%s) - $EMPIEZA" | bc)
hms=`date -d "1970-01-01 $dur sec" +"%H:%M:%S"`
echo "TIEMPO DE EJECUCIÓN: $hms"

 
}        
						            # si no hay argumento 
							if [ ! $1 ]
								then
								 echo " "
								 echo " "
								 echo "NO HAS INTRODUCIDO EL NOMBRE DE LA CARPETA A COMPRIMIR"
								 echo " "
                                 contarTiempoEjecucion
						   else
						        if [ $1 == "help" ]
									then
									echo " "
									 echo " "
									 echo "EJEMPLO :  $ comprime nombreDirectorio"
									 echo " Opcion:  -b (borra el directorio que se va a comprimir)"
                                     contarTiempoEjecucion
						       else
																	   
						

											 # si existe el directorio a comprimir
									 if [ -d ${directorio} ]
									 then
										# si no existe el directorio destino
						               echo $#
										   if [ ! -d ${HOME}/COMPRIME ] 
												then
												mkdir $HOME/COMPRIME
										   fi
											cd .


											echo "... Comprimiendo ..."
											echo " "
											tar -czvpf ${DATE}-${directorio}.tar.gz ${directorio}
											echo " MOVIENDO A ${destino}" 
											mv $DATE-$1.tar.gz ${destino}/$DATE-$1.tar.gz
												  if [ $# > 1 ]
						                            then 
						                                 if [ "$2" == "-d" ] # borrar carpeta que se ha comprimido
												          then
                                                             echo ""
                                                             echo "BORRANDO : "
                                                             echo ""
												            rm -Rvf ${directorio}
												            echo "BORRADO ${directorio}"
												         fi
						                         fi
											echo " "
											echo "COMPLETADO"
											echo " "
                                             contarTiempoEjecucion
									else
									   echo " " 
									   echo "NO EXISTE ESE DIRECTORIO"
									   echo " "
                                        contarTiempoEjecucion
									 fi
						  fi




					fi
 
			










