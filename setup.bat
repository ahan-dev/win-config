copy komorebi\* %USERPROFILE%
copy Startup\* "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
schtasks /create /xml Tasks\LockDisable /tn LockDisable /f
schtasks /create /xml Tasks\LockEnable /tn LockEnable /f
