@echo off
REM Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo .txt y si pulsa 2 que se cree un archivo .bat
REM Autor: Cesar Bls Holgado
REM Fecha: 15/10/2023
cls
title Creador de archivos
echo 1 Crear archivo .txt
echo 2 Crear archivo .bat
set/P opcion= "Introduzca opcion (1,2): "
if %opcion% EQU 1 goto txt
if %opcion% EQU 2 goto bat
:txt
cls
set/P name= "Introduce un nombre para el archivo .txt: "
set/P ruta= "Introduzca la ruta: "
echo > %ruta%\%name%.txt
echo.
echo El archivo %name%.txt se ha creado correctamente
pause
exit
:bat
cls
set/P name= "Introduce un nombre para el archivo .bat: "
set/P ruta= "Introduzca la ruta: "
echo > %ruta%\%name%.bat
echo.
echo El archivo %name%.bat se ha creado correctamente
pause
exit