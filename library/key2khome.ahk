	send,^a
	send,{del}
    sleep,30
	send,^d
	sleep,50
	run,"C:\Program Files (x86)\1Password\1Password.exe"

	IfWinNotActive, 1Password, , WinActivate, 1Password, 
WinWaitActive, 1Password, 
	sleep,100
	send,{enter}
	sleep,100
	send,{enter}
	sleep,500
	send,spdh3h{enter}
	
	return