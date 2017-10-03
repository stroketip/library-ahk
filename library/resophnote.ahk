{
clipboard_backup = %ClipboardAll%
clipboard=

send,^a
send,^c
clipwait,1
send,^d

sleep,100
run,C:\Program Files (x86)\ResophNotes\ResophNotes.exe
WinWait, ResophNotes 1.5.5 , 
IfWinNotActive, ResophNotes 1.5.5 , , WinActivate, ResophNotes 1.5.5 , 
WinWaitActive, ResophNotes 1.5.5 , 
sleep,300
Send, ^n
sleep,400
send,^v
WinWait, ResophNotes 1.5.5, 
IfWinNotActive, ResophNotes 1.5.5, , WinActivate, ResophNotes 1.5.5, 
WinWaitActive, ResophNotes 1.5.5, 
Sleep, 100
MouseClick, left,  281,  500
Sleep, 5500

WinHide , a

sleep,2000
Process, Close, ResophNotes.exe

Clipboard := clipboard_backup

return
}