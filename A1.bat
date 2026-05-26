@echo off
echo --------------------------------------------
echo -      ALGONQUIN COLLEGE - COM - 26S        -
echo --------------------------------------------
set "arg=%1"
if "%arg%"=="" set "arg=CODED.txt"
if exist CODED.txt del CODED.txt
if exist RESTORED.txt del RESTORED.txt
gcc code\Compilers.c code\Main1Coder.c code\Step1Coder.c -o compilers
timeout /t 1 /nobreak >nul
compilers 1 1 input\README.txt %arg% > out.txt 2> err.txt
timeout /t 1 /nobreak >nul
compilers 1 0 %arg% RESTORED.txt >> out.txt 2>> err.txt
dir out.txt err.txt
type out.txt
