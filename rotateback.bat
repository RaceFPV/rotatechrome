if EXIST "%homedrive%%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\User StyleSheets\Custom.css.backup" ( 
goto fixchrome
) else (
goto notbroken
)


:fixchrome
cd "%homedrive%%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\User StyleSheets\"

copy /Y Custom.css.backup Custom.css
del Custom.css.backup



:notbroken
