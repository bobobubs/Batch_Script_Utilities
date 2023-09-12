@echo off
if "%1"=="" (
    echo Please provide a subnet prefix.
    exit /b
)
for /l %%i in (1,1,254) do ping -n 1 -w 10 %1.%%i | find "Reply"
	