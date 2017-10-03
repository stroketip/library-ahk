MouseGetPos, x0, y0

MouseMove, x0,y0
MouseClick, left


run,C:\Users\stroketip\Desktop\ショートカット\tcpmon271\tcpmon.exe

WinWait, TCP Monitor Plus, 
IfWinNotActive, TCP Monitor Plus, , WinActivate, TCP Monitor Plus, 
WinWaitActive, TCP Monitor Plus, 

send,!{space}n
Sleep, 100

run,C:\Users\stroketip\Desktop\ショートカット\trafficcon050\trafficcon.exe

WinWait, Traffic Management Controller, 
IfWinNotActive, Traffic Management Controller, , WinActivate, Traffic Management Controller, 
WinWaitActive, Traffic Management Controller, 

send,{alt}ts
sleep,100

send,!{space}n

return




/*
{
WinWait, ahk_class TFOya.UnicodeClass, 
IfWinNotActive, ahk_class TFOya.UnicodeClass, , WinActivate, ahk_class TFOya.UnicodeClass, 
WinWaitActive, ahk_class TFOya.UnicodeClass, 
MouseClick, left,  129,  12
Sleep, 100
MouseClick, left,  117,  42
Sleep, 100
exitapp
return
}
*/