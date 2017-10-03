	clipboard=

	sleep,20	
	send,^c

	clipwait,1
	
	temp := clipboard
	clipboard =

	clipboard := temp
	clipwait,1
	

run,C:\Program Files (x86)\RectAce_WB\RectAce_WB.exe

sleep,100
;MouseClick, left,  1810,  575
Sleep, 100
WinWait, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, 
IfWinNotActive, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, , WinActivate, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, 
WinWaitActive, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）,
sleep,100 
MouseClick, left,  130,  100
Sleep, 100
WinWait, ファイルを開く, 
IfWinNotActive, ファイルを開く, , WinActivate, ファイルを開く, 
WinWaitActive, ファイルを開く, 
Send, {CTRLDOWN}v{CTRLUP}{ENTER}


return
