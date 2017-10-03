run,C:\Program Files\DAEMON Tools Lite\DTLite.exe 

MouseClick, left,  359,  113
Sleep, 100
Send, {ENTER}
WinWait, DAEMON Tools Lite 10.1, 
IfWinNotActive, DAEMON Tools Lite 10.1, , WinActivate, DAEMON Tools Lite 10.1, 
WinWaitActive, DAEMON Tools Lite 10.1, 
MouseClick, left,  112,  158
Sleep, 100
WinWait, DAEMON Tools Lite, 
IfWinNotActive, DAEMON Tools Lite, , WinActivate, DAEMON Tools Lite, 
WinWaitActive, DAEMON Tools Lite, 
MouseClick, left,  97,  108
Sleep, 100
