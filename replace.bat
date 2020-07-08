setlocal EnableExtensions EnableDelayedExpansion
set "INTEXTFILE=file.txt"
set "OUTTEXTFILE=file_out.txt"

for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set string=%%A
    set modified=!string:~0,22!20!!string:~24!
    echo !modified!>>"%OUTTEXTFILE%"
)

endlocal