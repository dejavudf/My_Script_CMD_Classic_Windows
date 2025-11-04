@echo off
del *_ping.log

:inicio
for /F "tokens=1" %%a in (ips.txt) do start /min tping.cmd %%a &

:tempo
timeout /t 330

goto inicio
