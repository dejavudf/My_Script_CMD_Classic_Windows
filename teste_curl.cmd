@echo on
del *_curl.log

:inicio
for /F "tokens=1-3 delins=." %%a in (urls.txt) do start /min tcurl.cmd %%a &

:tempo
timeout /t 15
goto inicio