SetTitleMatchMode, 2

winwait,- ]—ˆ‚Ì Evernote
sleep,100
send,^+f

winactivate,- ]—ˆ‚Ì Evernote
IfWinNotActive,- ]—ˆ‚Ì Evernote, , WinActivate,- ]—ˆ‚Ì Evernote
WinWaitActive,- ]—ˆ‚Ì Evernote, 

sleep,100

send,^+f
return