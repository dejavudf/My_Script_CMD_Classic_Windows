@echo on
echo "%date% - %time%" >> %2_curl.log
echo "Site: %1" >> %2_curl.log
curl -v -I %1 -m 5 | findstr HTTP >> %2_curl.log
echo ################################################################################ >> %2_curl.log
exit
