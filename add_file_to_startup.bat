@echo off
SETLOCAL

:: Get the current directory
SET "CurrentDir=%CD%"

:: Ask for the file name
SET /P "FileName=Enter the file name to add to startup: "

:: Full path of the file
SET "FilePath=%CurrentDir%\%FileName%"

:: Path to the startup directory
SET "StartupDir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Check if the file exists
IF NOT EXIST "%FilePath%" (
	    echo The file %FilePath% does not exist.
	        goto :eof
	)

	:: Copy the file to the startup directory
	copy "%FilePath%" "%StartupDir%"

	echo File %FileName% copied to Startup folder.
	ENDLOCAL
