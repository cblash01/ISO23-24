@echo off
REM Nos piden que hagamos todas las operaciones posibles
REM Autor: Cesar Bls Holgado
REM Fecha: 14/10/2023
cls
set/A suma = %1 + %2 + %3
set/A media = %suma% / 3
echo La media de los numero %1, %2 y %3 es: %media%

