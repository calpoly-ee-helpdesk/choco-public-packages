if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

SetTitleMatchMode, 2

WinWait Uninstall LTspice XVII ahk_class #32770
WinActivate
Sleep 1000
; Click on 'Yes'
ControlClick Button2
Sleep 400

; Wait for the confirmation window to pop up
WinWait Uninstall LTspice XVII ahk_class #32770
WinActivate

; Click on 'Yes'
ControlClick Button2
