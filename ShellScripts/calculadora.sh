#!/bin/bash
# Titulo: calculadora
# Autor: Cesar Blas Holgado
# Fecha: 23 de enero 2024
clear
echo ".........................................."
echo ""
echo "Cesar Blas Holgado"
echo ""
echo ".........................................."
echo ""

if [ $# -ne 2 ]; then
	echo "Numero de parametros incorrecto"
	exit
fi
if [ -f $1 ]; then
	echo "Fichero existente"
	exit
fi

for ((i=1;i<=$2;i++)); do
echo ""
read -p "Opercion: " op 
read -p "Num 1: " op1
read -p "num 2: " op2
case $op in
	S)
	clear
	echo "Has seleccionado la operacion SUMA"
	ressu=$(($op1+$op2))
	operacions="$op $op1 $op2"
	echo $operacions >> $1
	echo $operacions
	echo ""
	echo "El resultado es $ressu"
	;;
	R)
	clear
	echo "Has seleccionado la operacion RESTA"
	resres=$(($op1-$op2))
	operacionr="$op $op1 $op2"
	echo $operacionr >> $1
	echo $operacionr
	echo ""
	echo "El resultado es $resres"
	;;
	M)
	clear
	echo "Has seleccionado la operacion MULTIPLICACION"
	resmul=$(($op1+$op2))
	operacionm="$op $op1 $op2"
	echo $operacionm >> $1
	echo $operacionm
	echo ""
	echo "El resultado es $resmul"
	;;
	D)
	clear
	echo "Has seleccionado la operacion DIVISION"
	ressu=$(($op1/$op2))
	operaciond="$op $op1 $op2"
	echo $operaciond > $1
	echo $operaciond
	echo ""
	echo "El resultado es $ressu"
	
	;;
	X)
		echo "Saliendo de la calculadora"
		exit
	;;
	*)
	 echo "operacion incorrecta"
	;;
	
esac
done
ruta=$(realpath $1)
echo ".........................................."
echo ""
echo $ruta
echo ""
echo ".........................................."

exit
