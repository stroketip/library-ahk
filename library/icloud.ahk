clipboard_backup = %ClipboardAll%
clipboard=


WinWait, iCloud, 
IfWinNotActive, iCloud, , WinActivate, iCloud, 
WinWaitActive, iCloud, 

sleep,5000

clipboard = stroketip@yahoo.co.jp
clipwait,1

soundgetwavevolume, soundvolume
SoundSetWaveVolume, -100

Send, ^v

clipboard=

sleep,100
send,^a
send,^c
clipwait,1

soundsetwavevolume, soundvolume
soundvolume=

if(clipboard = "stroketip@yahoo.co.jp")
{
send,{right}
send,{TAB}spdh3h
MouseClick, left,  423,  572
Sleep, 100
Send, {ENTER}

}
Clipboard := clipboard_backup


return