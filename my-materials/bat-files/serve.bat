@echo off
rem FOR /L %%parameter IN (start,step,end) DO command 
for /L %%i in (1,1,60) do call build.bat
set /p id="Process finished. Enter to close..."
exit /B
