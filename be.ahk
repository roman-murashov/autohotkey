#EscapeChar \  ; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook  ; this MUST be called at the start of your script
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#HotkeyInterval 4000 ;2000  ; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 200

SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match.




#IfWinActive Beyond Earth
Tab::
	MouseMove, 1850, 1025
	Send {click}
return
LWin::Browser_Search
CapsLock::Enter
#IfWinActive



; Sid Meier's Civilization: Beyond Earth (DX11)
; ahk_class WinClass_FXS
; ahk_exe civilizationbe_dx11.exe












; auto reload on save ($?)
~^s::
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s}
}
return
