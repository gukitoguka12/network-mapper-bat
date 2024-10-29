@echo off
setlocal


:start
chcp 65001 >nul
call :banner
REM Get user input for target and port range
set /p TARGET="Enter the target IP address (default: 127.0.0.1): "
if "%TARGET%"=="" set TARGET=127.0.0.1

set /p PORTS="Enter the port range (default: 22-443): "
if "%PORTS%"=="" set PORTS=22-443

REM Run the Nmap scan
nmap -p %PORTS% -sV %TARGET% -oX scan_results.xml

REM Check if Nmap was successful
if %errorlevel% neq 0 (
    echo An error occurred while scanning.
    exit /b %errorlevel%
)

REM Display scan results
echo Scan completed. Results saved to scan_results.xml.
echo.

REM Optional: Display open ports in a more readable format
echo Open ports for %TARGET%:
nmap -p %PORTS% %TARGET% | findstr /C:"open"

echo.

echo Full scan details:
type scan_results.xml | more

pause

echo [38;2;0;0;!blue!m███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ███╗   ███╗ █████╗ ██████╗ ██████╗ ███████╗██████╗ 
echo [38;2;0;0;!blue!m████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
echo [38;2;0;0;!blue!m██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝     ██╔████╔██║███████║██████╔╝██████╔╝█████╗  ██████╔╝
echo [38;2;0;0;!blue!m██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗     ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██╗
echo [38;2;0;0;!blue!m██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗    ██║ ╚═╝ ██║██║  ██║██║     ██║     ███████╗██║  ██║
echo [38;2;0;0;!blue!m╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝
echo ^[38;2;0;!green!;0m                   ___.-------.___
echo ^[38;2;0;!green!;0m               _.-' ___.--;--.___ `-._
echo ^[38;2;0;!green!;0m            .-' _.-'  /  .+.  \  `-._ `-.
echo ^[38;2;0;!green!;0m          .' .-'      |-|-o-|-|      `-. `.
echo ^[38;2;0;!green!;0m         (_ <O__      \  `+'  /      __O> _)
echo ^[38;2;0;!green!;0m           `--._``-..__`._|_.'__..-''_.--'
echo ^[38;2;0;!green!;0m                  ``--._________.--''
timeout 3 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] loading network mapper
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] accessing ports
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] accessing Network Interfaces
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] accessing Target IP Addresses
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] accessing Protocols
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] enabling Service Version Information
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] enabling Operating System Detection
ping -n 1 -w 100 127.0.0.1 >nul
echo [38;2;255;255;255m[38;2;0;0;!blue!m+38;2;255;255;255m] enabling Local System Resources
ping -n 1 -w 100 127.0.0.1 >nul
