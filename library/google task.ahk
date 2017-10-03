clipboard_backup = %ClipboardAll%
clipboard=

WinWait, Course Vector Google Tasks, 
IfWinNotActive, Course Vector Google Tasks, , WinActivate, Course Vector Google Tasks, 
WinWaitActive, Course Vector Google Tasks, 

clipboard= nanamomo
clipwait,1

sleep,3000

Send, {TAB}
sleep,100
send,^v

soundgetwavevolume, soundvolume
SoundSetWaveVolume, -100

sleep,100

send,+{left 8}
send,^c
clipwait,1

soundsetwavevolume, soundvolume
soundvolume=


if(clipboard = "nanamomo")
{
send,{right}
Sleep, 100
Send, {ENTER}

}
Clipboard := clipboard_backup


return