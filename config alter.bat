echo ^<?xml version^="1.0" encoding^="utf-8" ^?^> >.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo  ^<configuration^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<appSettings^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^="type" value="influxdb" /^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^="interval" value^="5" /^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^="influx_address" value^="http://localhost:8086" /^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo   ^<add key^="influx_db" value="ohmgraphite" /^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo  ^</appSettings^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
echo ^</configuration^> >>.\OhmGraphite-0.5.0\OhmGraphite.exe.config
pause