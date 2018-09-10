@echo off
echo First we will build a docker image. Make sure Docker is running before continue (Docker Quickstart Terminal)
pause
cls
cd grafana
call build-docker.cmd
echo Docker image built
pause
cls
cd ..
echo Now we need some information to configure the different config files correctly. Do not enter spaces or more information than in the examples.
echo Do not enter spaces or more information than in the examples.
echo.
pause 
cls
echo We start with parameters for xmr-stak
echo.
REM parameters for xmr-stack
set /p xmrstackport=Enter your preferred xmr-stak listingport (ie 987): 
set /p xmrstackpool=Enter your preferred mining pool incl port (ie geo.atpool.party:6666): 
set /p xmrstackwallet=Enter your turtlecoin public wallet (ie TRTLv1ZMwULhz66xHH6CCVZFmXtuCZLFraQFDLLTu6XYb639UYE2fVTDot8oZyBs6KFxs1Hiz3T8TRLfL1d1CKRGTH2Epd1SyVV): 
set /p xmrstackpoolpass=Enter your pool password (optional): 
echo That's all for xmr-stack
pause
cls
echo And now the parameters for hashmonitor
echo.
REM parameters for hashmonitor
set /p hashmonitorcards=Enter the amount of videocards you are using for mining (ie 1): 
set /p dockerip=Enter the IP your docker-daemon is listening on (ie 192.168.99.100): 
pause
cls
echo We got all the parameters we need to configure the config files
echo We are now going to apply all the changes
pause
cls
REM appending xmr-stack config to config files
echo "httpd_port" : %xmrstackport%,>>".\xmr-stak\config.txt"
echo "pool_list" :>>".\xmr-stak\pools.txt"
echo ^[>>".\xmr-stak\pools.txt"
echo 	{"pool_address" : "%xmrstackpool%", "wallet_address" : "%xmrstackwallet%", "rig_id" : "", "pool_password" : "%xmrstackpoolpass%", "use_nicehash" : false, "use_tls" : false, "tls_fingerprint" : "", "pool_weight" : 1 },>>".\xmr-stak\pools.txt"
echo ^],>>".\xmr-stak\pools.txt"
REM appending Hashmonitor config tot config files
echo 		grafanaUtpIP = %dockerip% >>".\hashmonitor.ini"
echo 		installedCards = %hashmonitorcards% >>".\hashmonitor.ini"
echo 		STAKport = %xmrstackport% >>".\hashmonitor.ini"
REM now replace ohmgraphite.exe.config
echo ^<?xml version^="1.0" encoding^="utf-8" ^?^> >.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo  ^<configuration^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<appSettings^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^=^"type^" value^=^"influxdb^" ^/^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^=^"interval^" value^=^"5^" ^/^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^=^"influx_address^" value^=^"http^:^/^/%dockerip%^:8086^" ^/^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^=^"influx_db" value="ohmgraphite^" ^/^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo  ^<^/appSettings^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo ^<^/configuration^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config

echo All done!
pause
