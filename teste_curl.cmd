@echo on
del *_curl.log

:inicio
for /F "tokens=1-2 delims=@" %%a in (urls.txt) do start /min tcurl.cmd %%a %%b &

:tempo
timeout /t 15

goto inicio
