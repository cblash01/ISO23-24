#!/bin/bash
# Titulo: Ejercicio entregable 4 users. Consulta informacion de los usuarios y guarda un registro.
# Autor: Cesar Blas Holgado
# Fecha: 2 de febrero 2024
clear
base=$1
if [ $# -ne 1  ]; then
	echo "No has introducido una base correcta, se usara la base por defecto.
	
	Pulsa cuaquier tecla para continuar" 
	base=$((1000))
	read -n1
	clear
fi


fecha=$(date +"%D-%H-%Y")
hora=$(date +"%H-%M")
echo "============================================="
echo ""
echo "Inforde me usuario el dia $fecha a las $hora"

uid=$(cut -d ":" -f 3 /etc/passwd)
for usr in $uid; do

	if [ $usr -ge $base ]; then
		name=$(grep $usr /etc/passwd | cut -d ":" -f 1 | head -n1)
		echo ""
		echo "$name - $usr"

	fi
done
echo ""
echo "============================================="

usuario=$(whoami)
echo "$fecha - $hora - El usuario $usuario ha solicitado informe de usuarios" > /tmp/logeventos 
