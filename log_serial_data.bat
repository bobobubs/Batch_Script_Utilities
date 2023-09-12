@echo off
setlocal

if "%~1"=="" (
    echo Usage: %~nx0 [SerialPort] [BaudRate] [Parity] [DataBits] [StopBits]
    echo Example: %~nx0 COM1 9600 N 8 1
    exit /b
)

set PORT=%~1
set BAUD=%~2
set PARITY=%~3
set DATABITS=%~4
set STOPBITS=%~5

echo Configuring %PORT% with Baud=%BAUD%, Parity=%PARITY%, DataBits=%DATABITS%, StopBits=%STOPBITS%

mode %PORT% BAUD=%BAUD% PARITY=%PARITY% data=%DATABITS% stop=%STOPBITS%
copy %PORT% data.log
