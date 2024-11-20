copy komorebi\* %USERPROFILE%
copy Startup\* "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
schtasks /create /xml Tasks\LockDisable /tn LockDisable /f
schtasks /create /xml Tasks\LockEnable /tn LockEnable /f
FOR /F %%I IN ('dir %USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal* /B') DO @SET "termpath=%%I"
copy wt\settings.json %USERPROFILE%\AppData\Local\Packages\%termpath%\LocalState\
komorebic fetch-asc