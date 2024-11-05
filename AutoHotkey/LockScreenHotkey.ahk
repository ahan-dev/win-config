#Requires AutoHotkey v2.0

#HotIf GetKeyState("F22")
z up::
{
Run('schtasks /Run /TN LockEnable')
Run('cmd /c "Rundll32.exe user32.dll,LockWorkStation"')
}
#HotIf