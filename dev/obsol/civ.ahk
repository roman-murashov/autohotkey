

#IfWinActive ahk_exe civilizationbe_dx9.exe
#IfWinActive ahk_exe civilizationbe_dx11.exe
#IfWinActive ahk_exe CivilizationV.exe
#IfWinActive ahk_exe CivilizationV_DX11.exe
#IfWinActive ahk_exe CivilizationVI.exe



-::WheelDown
=::WheelUp

Joy1::Send {click}
Joy2::Click right
; Joy3::MsgBox 3
; Joy4::MsgBox 4
; Joy5::MsgBox 5
; Joy6::MsgBox 6
; Joy7::MsgBox 7
; Joy8::MsgBox 8

NumpadMult::
coolTip("confine")
Confine := !Confine
ClipCursor(Confine, 25, 10, A_screenwidth-25, A_screenheight-25, false)
Return



#IfWinActive



#IfWinActive ahk_exe CivilizationV.exe
#IfWinActive ahk_exe CivilizationV_DX11.exe

; $w::
; While GetKeyState("w", "P")
; {
; 	Send, w
; 	Sleep, 10
; }
; Return
; If it's not fast enough, try SetBatchLines, -1 or remove sleep



^Space::clickAndReturn(840, 1020)

3::clickAndReturn(55, 852)
^r::Send !r
5::Send !r
!v::Send !r
^v::Send !r


z::l
x::i
c::s
v::p

^Tab::
	Send {click 1500, 830}
	Send, Tab UP
return

; Tab::
RShift::
	clickAndReturn(1500, 830)
return

return


#IfWinActive ahk_exe civilizationbe_dx9.exe
#IfWinActive ahk_exe civilizationbe_dx11.exe

3::clickAndReturn(55, 852)
^r::Send !r
5::Send !r
!v::Send !r
^v::Send !r


z::l
x::i
c::s
v::p

^Tab::
	Send {click 1625, 1000}
	Send, Tab UP
return
Tab::
RShift::
	clickAndReturn(1625, 1000)
return

MButton::
	Send +{Click}
return

return
