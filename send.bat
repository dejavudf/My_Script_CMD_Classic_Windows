@echo off
set path=%path%;d:\perl\bin
set email_status=me@yahoo.com.br
set email_mysystemprod=me@yahoo.com.br

set sistema=superimage
set resultado=_1_0_1_0
set intervalo=1800

echo Status superimage UPD
:inicio
echo STATUS ATUAL:>Status.txt
dir /b /on "D:\Projeto superimage Virtual\bck\Logs">>Status.txt
echo ***************************************************************>>Status.txt
echo Lista PDL's:>>Status.txt
dir /b /on "D:\Projeto superimage Virtual\bck\Logs\pdl">>Status.txt
blat -install smtp.mycompanynet.int alexff@mycompany.com.br
Blat head.txt -subject "Status %sistema% UPD" -to %email_status% -attach Status.txt
sleep %intervalo%
if exist "D:\Projeto superimage Virtual\bck\update.id" goto inicio
sleep 30
Blat head.txt -subject "FIM do superimage - %sistema%" -to %email_status%
if exist "sucesso.txt" del "sucesso.txt"
if exist "mysystemprod.txt" del "mysystemprod.txt"
if exist "erro.txt" del "erro.txt"
if exist "filtro.txt" del "filtro.txt"
rem find /I "%resultado%" status.txt>filtro.txt
rem for /F "tokens=1 delims=_" %%a in (D:\Projet~1\bck\bdx.txt) do start /min /wait calc.cmd %%a
perl conta.cgi
Blat cadastro.txt -subject "Cadastro superimagePROD %sistema%" -to %email_mysystemprod% -attach mysystemprod.txt
if exist "*.tmp" del "*.tmp"
if exist "cont2.txt" del "cont2.txt"
if exist "cont.txt" del "cont.txt"
