@echo off

if "%MSDEVDIR%"=="" then goto error
if not exist "%MSDEVDIR%\Template" md "%MSDEVDIR%\Template" 
echo on
copy en\winxwiz60.awx "%MSDEVDIR%\Template"
@pause
exit


:error
echo ERROR: Environ var 'MSDEVDIR' is undefined. MAYBE you can set 'MSDEVDIR' to be 'C:\Program Files\Microsoft Visual Studio\Common\MSDev98'?
pause
