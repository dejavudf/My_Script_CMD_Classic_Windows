@echo off
ECHO ******** Script de Ativacao de BACKUP da superimageVirtual ********
for /F "tokens=1-2" %%a in (IP.txt) do start /min principal.cmd %%a & sleep 30