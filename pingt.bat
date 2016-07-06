@echo off
SET /a timeout=1+0%2+!0%2
rem echo %timeout%
:loop
for /F "tokens=1 delims=#" %%T IN ('ping -n 1 %1 ^| find "." ^| find /v /i "Ping" ^| find /v /i "[" ^| find /v /i "Pinging" ') DO echo %date% %time:~0,-3% %%T %1
ping 127.0.0.1 -n %timeout% >nul
rem echo $$$$
goto :loop

