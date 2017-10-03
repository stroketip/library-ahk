;run,C:\Program Files (x86)\Fenrir Inc\PictBear Second Edition\PictBear.exe

winactivate,ahk_class ENMainFrame
sleep,100

send,!to
sleep,300

send,k

send,+{tab}
send,{right 3}
send,{tab 3}

return
