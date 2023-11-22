@echo on

REM Command Prompt window for php-cgi
start cmd /k php-cgi -b 127.0.0.1:9000

REM Command Prompt window for Nginx
cd /d C:\tools\Moon-Sky\nginx-1.25.3 & nginx

REM Open the default web browser with localhost using PowerShell
powershell Start-Process "http://localhost"