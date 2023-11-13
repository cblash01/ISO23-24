@echo off
REM Este script creara los directorios de asir, dam, snr, daw, ceti
REM Autor: Cesar Blas Holgado
REM Fecha: 13/10/2023

echo Creando carpetas de usuarios
mkdir %USERPROFILE%\asir %USERPROFILE%\dam %USERPROFILE%\smr %USERPROFILE%\daw %USERPROFILE%\ceti
mkdir %USERPROFILE%\asir\docs %USERPROFILE%\asir\pract %USERPROFILE%\asir\exam 
mkdir %USERPROFILE%\dam\docs %USERPROFILE%\dam\pract %USERPROFILE%\dam\exam 
mkdir %USERPROFILE%\smr\docs %USERPROFILE%\smr\pract %USERPROFILE%\smr\exam 
mkdir %USERPROFILE%\daw\docs %USERPROFILE%\daw\pract %USERPROFILE%\daw\exam 
mkdir %USERPROFILE%\ceti\docs %USERPROFILE%\ceti\pract %USERPROFILE%\ceti\exam