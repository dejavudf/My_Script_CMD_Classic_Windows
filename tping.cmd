@echo off

REM variables
set VAR_DATE_START=%date%
set VAR_TIME_START=%time%
set VAR_COUNT=300

REM script
:inicio
echo Teste de ICMP: >> %1_ping.log
ping %1 -t -n %VAR_COUNT% >> %1_ping.log
echo - >> %1_ping.log
echo Data/Hora Inicio: %VAR_DATE_START% - %VAR_TIME_START% >> %1_ping.log
echo Data/Hora Fim: %date% - %time% >> %1_ping.log
echo Total Pings: %VAR_COUNT% >> %1_ping.log
echo ################################################################################ >> %1_ping.log
exit
goto fim

:fim
exit
