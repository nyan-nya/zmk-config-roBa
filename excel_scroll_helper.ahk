#SingleInstance Force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ==============================================================================
; roBa Trackball Excel Horizontal Scroll Helper
; ==============================================================================
; Windows版Excelは標準の横スクロール信号（WheelLeft/WheelRight）を無視するため、
; Excelがアクティブな場合のみ、横スクロール信号を「Shift + 縦スクロール」に変換します。

#IfWinActive ahk_class XLMAIN
WheelLeft::Send +{WheelUp}
WheelRight::Send +{WheelDown}
#IfWinActive
