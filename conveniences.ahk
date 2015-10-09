; #IfWinActive, ahk_class CabinetWClass
; Backspace::
;    ControlGet renamestatus,Visible,,Edit1,A
;    ControlGetFocus focussed, A
;    if(renamestatus!=1&&(focussed=”DirectUIHWND3″||focussed=SysTreeView321))
;    {
;     SendInput {Alt Down}{Up}{Alt Up}
;   }else{
;       Send {Backspace}
;   }
; #IfWinActive

; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return

!+Esc::
Send {^+Esc}
return

~Esc::
If WinActive("Microsoft Visual Studio") {
	send ^q
}
return
; #IfWinActive Sublime Text;
; Esc::MsgBox You Pressed Escapade
; #IfWinActive

; #IfWinActive ahk_class ExploreWClass
; ^l::
; #IfWinActive ahk_class CabinetWClass
; ^l::Send {F4}
; return
; #IfWinActive

#IfWinActive ahk_class ExploreWClass
$^n::
#IfWinActive ahk_class CabinetWClass
$^n::
send {AppsKey}wf
return
; to make renaming files a little less annoying
~F2::
Send {Right}
Send {Left}
return
#IfWinActive


^SPACE::  Winset, Alwaysontop, , A

clickAndReturn(x, y)
{
	MouseGetPos, xpos, ypos
	Send {click %x%, %y%}
	MouseMove, %xpos%, %ypos%
}


#IfWinActive Chrome
F4::
	clickAndReturn(1907, 1148)
return
; shortcut for zipping folder, careful not to move mouse


#a::
	Click, Right
	Send, {Down 8}{Enter}
	KeyWait, LWin, D
	; MouseGetPos, xpos, ypos
	Send {click 640, 220}
	Send {LWin UP}
	; MouseMove, %xpos%, %ypos%
	KeyWait, a, D
	WinGetActiveTitle, Title
	WinClose %Title%
return
#IfWinActive


; conveniences
CapsLock & Backspace:: Send {Delete}
CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}
CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}

#q::Send !q


#IfWinNotActive Total Commander
RButton::click right
RButton & WheelDown::Send {Browser_Back}
RButton & WheelUp::Send {Browser_Forward}
#IfWinNotActive




