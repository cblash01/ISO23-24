#!/bin/bash
# Titulo: Five or more
# Autor: Cesar Blas Holgado
# Fecha: 29 de enero 2024
clear
echo "·····························"
echo "AUTOR: Cesar Blas Holgado"
echo "·····························"
echo ""
if [ $# -ne 2 ]; then
	echo "Numero de parametros incorrecto"
	exit
fi
if [ -f $1 ]; then
	echo "El fichero introducido ya existe"
	exit
fi
if [ ! -d $2 ]; then
	echo "El directorio introducido no esxiste"
	exit
fi
if [ ! "ls $2" ]; then
	echo "El directorio esta vacio"
	exit
fi

txts=$(ls $2/*.txt)
for ficheros in $txts; do
	count=$(cat $ficheros | wc -l)
	if [ $count -ge 5 ]; then
		echo "$ficheros tienes mas de 5"
		echo $ficheros >> $1
		numw=$(cat $ficheros | wc -w)
		echo "El fichero original tiene $numw palabras" | cat - $ficheros >> "$ficheros.q"
	fi
done
numfich=$(cat $1 | wc -l )
echo "Se han identificado $numfich ficheros" >> $1
