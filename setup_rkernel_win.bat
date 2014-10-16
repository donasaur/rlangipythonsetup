@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

echo Ex: "C:\Program Files\R\R-3.1.1"
echo Include the quotes and swap out '3.1.1' with your R version num
set /p rloc="Enter location of R directory (example above): " %=%
echo.
echo Ex: "C:\Users\donPC\Anaconda\Lib\site-packages\rpy2"
echo Include the quotes and swap out 'donPC' with your PC username
set /p rpy2loc="Enter location of rpy2 directory (example above): " %=%


setx R_HOME %rloc% /M
setx R_USER %rpy2loc% /M

ipython profile create rkernel
for /f "delims=" %%a in ('ipython locate profile rkernel') do @set foobar=%%a
mv rkernel.py %foobar%\startup
