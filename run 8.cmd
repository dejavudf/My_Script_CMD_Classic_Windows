@echo off
echo ******** SCRIPT - Adequacao superimageVirtual *******
:inicio
for /F "tokens=1-2" %%a in (IP.txt) do start /min principal.cmd %%a & sleep 50
