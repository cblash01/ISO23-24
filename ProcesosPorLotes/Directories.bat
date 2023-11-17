@echo off
REM Menu con 5 funciones, crear fichero, mostrar arbol de usuario, archivos con extenion .txt, crear directorios, copia la carpeta de usuario al escritorio
REM Autor: Cesar Bls Holgado
REM Fecha: 15/10/2023
cls
title Menu Condicional
echo 1 Crear fichero con nombre pedido al usuario
echo 2 Mostrar el arbol de directorios de la carpeta de usuario
echo 3 Mostrar archivos con extension txt
echo 4 Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5 Copia el contenido de tu carpeta de usuario al Escritorio
set/P opcion= "Introduzca opcion: "
if %opcion% EQU 1 goto fichuser
if %opcion% EQU 2 goto arbol
if %opcion% EQU 3 goto txtextension
if %opcion% EQU 4 goto diralmara
if %opcion% EQU 5 goto copyuser
:fichuser
cls
set/P name= "Introduce el nombre del archivo: " 
echo > %name%
pause
exit
:arbol
cls
tree %userprofile%
pause
exit
:txtextension
cls
dir *.txt
pause
exit
:diralmara
cls
mkdir alfredoff marinapg ramonam
echo Carpetas creadas
pause
exit
:copyuser
cls
xcopy %userprofile% E:\copia /E
pause
exit