@echo off
setlocal EnableExtensions EnableDelayedExpansion
set /P inputname=Inserisci il nome del file da sostituire: 
set extension=.txt
set INTEXTFILE=%inputname%%extension%
set OUTTEXTFILE=output_file.txt

for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set string=%%A
    set modified=!string:~0,22!20!!string:~24!
    echo !modified!>>"%OUTTEXTFILE%"
    set complete=y
)

if %complete%==y (
    echo Completed! Check in your folder if there is a file named %OUTTEXTFILE%
) else (
    echo ERROR! Check file name
)

endlocal

cmd \k