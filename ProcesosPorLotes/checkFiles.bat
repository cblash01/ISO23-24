@echo off
REM Deberás pedir al usuario el nombre de un archivo y comprobar si existe. Si existe el fichero, mostrarás un aviso de que ya existe y volverá a preguntarte  por el archivo, si no existe, lo creará.
REM Autor: Cesar Bls Holgado
REM Fecha: 15/10/2023
cls
title CheckFiles
:pre
set/P nombre= "Introduce el nombre del archivo: "
if exist %nombre% (goto creado ) else (goto crear)
pause
:creado
cls
echo El archivo ya existe 
goto pre
pause
:crear
echo > %nombre% | echo Se a creado el archivo %nombre%
pause
exit