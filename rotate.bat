if EXIST "%homedrive%%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\User StyleSheets\Custom.css" ( 
goto timetorotatechrome 
) else (
goto nochrome
)


:timetorotatechrome
cd "%homedrive%%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\User StyleSheets\"

copy Custom.css Custom.css.backup
del Custom.css

@echo off
set FINAL=
set FINAL=%FINAL%/*
set FINAL=%FINAL%  Turn every website upside down
set FINAL=%FINAL%*/
set FINAL=%FINAL%body {
set FINAL=%FINAL%  -webkit-transform: rotate(180deg);
set FINAL=%FINAL%}
echo %FINAL%>Custom.css



:nochrome
