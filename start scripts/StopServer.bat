@echo on

REM Close the Command Prompt window running the StartServer.bat script
taskkill /FI "WINDOWTITLE eq StartServer.bat"

REM Change directory to where Nginx is installed
cd /d C:\tools\Moon-Sky\nginx-1.25.3

REM Stop Nginx
nginx -s stop

REM Close all instances of nginx.exe
taskkill /F /IM nginx.exe

REM Forcefully terminate php-cgi processes
taskkill /F /IM php-cgi.exe

REM Forcefully terminate cmd.exe processes that might be left from php-cgi
taskkill /F /FI "WINDOWTITLE eq cmd.exe - php-cgi -b 127.0.0.1:9000"