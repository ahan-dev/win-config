#Requires AutoHotkey v2.0

#z::
{
Run('schtasks /Run /TN LockEnable')
Run('cmd /c "Rundll32.exe user32.dll,LockWorkStation"')
}
