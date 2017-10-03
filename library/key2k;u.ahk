{
run,C:\Program Files (x86)\UWSC\UWSC.exe

WinWait, UWSC, 
IfWinNotActive, UWSC, , WinActivate, UWSC, 
WinWaitActive, UWSC, 
MouseClick, left,  151,  15
Sleep, 100
MouseClick, left,  165,  37
exitapp

return
}
