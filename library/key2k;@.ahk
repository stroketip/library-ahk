send,{blind}{ctrl up}{alt up}

clipboard_backup = %ClipboardAll%

send,^!s
sleep,1000

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
	sleep,100
		send,^d

	sleep,1250
	send,^d

	sleep,100
	send,^!s
	sleep,100
	ifwinnotactive,ASticky:
	{
		exitapp
	}
	}

exitapp
