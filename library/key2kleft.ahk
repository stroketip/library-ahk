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
WinWait, RectAce �i�ܲ��ް�ޑΉ��j, 
IfWinNotActive, RectAce �i�ܲ��ް�ޑΉ��j, , WinActivate, RectAce �i�ܲ��ް�ޑΉ��j, 
WinWaitActive, RectAce �i�ܲ��ް�ޑΉ��j,
sleep,100 
MouseClick, left,  130,  100
Sleep, 100
WinWait, �t�@�C�����J��, 
IfWinNotActive, �t�@�C�����J��, , WinActivate, �t�@�C�����J��, 
WinWaitActive, �t�@�C�����J��, 
Send, {CTRLDOWN}v{CTRLUP}{ENTER}


return
