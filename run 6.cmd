@echo off
echo ******** SCRIPT - Instalacao da superimageVirtual v8.1 ********
:inicio
for /F "tokens=1-2" %%a in (IP.txt) do start /min principal.cmd %%a & sleep 50
rem goto inicio
