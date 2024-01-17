#!/bin/bash
# Titulo: Agenda con distintas opciones en un menu
# Autor: Cesar Blas Holgado
# Fecha: 17 de enero 2024
clear

while [ true ]; do

echo " OPCIONES
a) Añadir una entrada
b) Buscar por dni
c) Ver la agenda completa
d) Eliminar todas las entradas de la agenda
e) Finalizar"
read -p "Introduce una opcion: " op
case $op in 
	a)
	clear
	read -p "Introduce el dni de tu nuevo contacto: " dni_in
	dniagen=$( cat agenda.txt | cut -d ":" -f "1" | grep -w $dni_in )
	if [ $dni_in = $dniagen -r 2> /dev/null ]; then
		clear
		echo "Este usuario ya existe y no se puede crear"
		exit
	else
		read -p "Introduce el nombre: " name_in
		read -p "Introduce los apellidos: " ape_in
		read -p "Introdice la localidad: " loc_in
		echo $dni_in:$name_in:$ape_in:$loc_in >> agenda.txt
		exit
	fi
	;;
	b)
	clear
	read -p "Introduce el dni de tu nuevo contacto: " dni_in
	dniagen=$( cat agenda.txt | cut -d ":" -f "1" | grep -w $dni_in )
	if [ $dni_in = $dniagen ]; then
		nameagen=$( grep -w $dni_in agenda.txt | cut -d ":" -f "2" )
		apeagen=$( grep -w $dni_in agenda.txt | cut -d ":" -f "3" )
		locagen=$( grep -w $dni_in agenda.txt | cut -d ":" -f "4" )
		echo "La persona con DNI número $dniagen es: $nameagen $apeagen, y vive en $locagen"
		exit
	else	
		clear
		echo "ERRO: El usuario no existe en tu agenda"
		exit
	fi
	;;
	c)
	clear
	if [ -s agenda.txt ]; then
		cat agenda.txt
		exit
	else
		clear
		echo "La agenda esta vacia"
		exit
	fi
	;;
	d)
	clear
	if [ -s agenda.txt ]; then
		echo "Borrando contenido"
		> agenda.txt
		echo "......................."
		echo "Contenido borrado"
		exit
	else
		clear
		echo "ERROR: La agenda ya esta vacia"
		exit
	fi
	;;
	e)break;;
esac
done

