@echo off

REM variables
set VAR_DATE_START=%date%
set VAR_TIME_START=%time%
set VAR_COUNT=30

echo Site: %1 >> url_curl.log
echo Data/Hora Inicio: %VAR_DATE_START% - %VAR_TIME_START% >> url_curl.log
curl -v -I %1 -m 5 | findstr HTTP >> url_curl.log
echo Data/Hora Inicio: %date% - %time% >> url_curl.log
echo ############################################################################ >> url_curl.log
exit