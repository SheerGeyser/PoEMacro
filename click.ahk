#InstallKeybdHook
#InstallMouseHook
#Persistent
#useHook, On
#SingleInstance force
SetBatchLines, -1

~^LButton::
while GetKeyState("LButton", "P")
{
	Click
}
return 
