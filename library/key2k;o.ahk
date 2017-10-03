coordmode,pixel,screen
coordmode,mouse,screen

mousegetpos,xa,ya

send,#b
sleep,100
send,{enter}
sleep,100


ImageSearch ,outX, outY, 1597, 763, 1891, 1079, C:\Users\stroketip\Desktop\ショートカット\ahk\library\kaisen  seigen\tcpmon.bmp
sleep,100

mouseclick,left,outX,outY ,,,,

ImageSearch ,outX, outY, 1597, 763, 1891, 1079, C:\Users\stroketip\Desktop\ショートカット\ahk\library\kaisen  seigen\tcpcon.bmp
sleep,100
mouseclick,left,outX,outY ,,,,


WinWait, Traffic Management Controller, 
IfWinNotActive, Traffic Management Controller, , WinActivate, Traffic Management Controller, 
WinWaitActive, Traffic Management Controller, 

send,!tp
sleep,100
send,!{f4}


winrestore,TCP Monitor Plus

WinWait, TCP Monitor Plus, 
IfWinNotActive, TCP Monitor Plus, , WinActivate, TCP Monitor Plus, 
WinWaitActive, TCP Monitor Plus, 

send,!{f4}
sleep,100

mousemove,xa,ya

return



/*
{
WinWait, ahk_class TFOya.UnicodeClass, 
IfWinNotActive, ahk_class TFOya.UnicodeClass, , WinActivate, ahk_class TFOya.UnicodeClass, 
WinWaitActive, ahk_class TFOya.UnicodeClass, 
MouseClick, left,  47,  15
Sleep, 100
MouseClick, left,  58,  42
Sleep, 100
WinWait, 名前を付けて保存, 
IfWinNotActive, 名前を付けて保存, , WinActivate, 名前を付けて保存, 
WinWaitActive, 名前を付けて保存, 

clipboard_backup = %ClipboardAll%
clipboard=

filenumber = 0

loop
{
	filenumber++
	ifnotexist C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
{
	clipboard=C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
	clipwait,1
	Send, ^v
	break
}
	}
sleep,100
send,{ENTER}
sleep,100

run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
exitapp
return
}

*/