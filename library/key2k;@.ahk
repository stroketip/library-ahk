send,{blind}{ctrl up}{alt up}

clipboard_backup = %ClipboardAll%

send,^!s
sleep,200

	loop
	{
	clipboard=
	
	send,^a
	send,^c
	clipwait,1
	
	tempa =
	tempa := clipboard
	
	if (tempa = "" )
	{
		send,^d
		sleep,100

	ifwinnotactive,ASticky:
	{
		exitapp
	}
	continue
	}
	
	send,^+{f4}
	sleep,1250
	send,^d

	sleep,200
	ifwinnotactive,ASticky:
	{
		exitapp
	}
	}

exitapp
