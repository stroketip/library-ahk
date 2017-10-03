
{
	send,{lbutton}
	send,{rbutton}
	sleep,100
	send,f
	

	sleep,1500

	winmove,a,,1920,-340,1080,1800
	sleep,250
	send,^0
	send,{up 6}
	sleep,300
	send,+#{printscreen}
	sleep,300
	
	send,{ctrl down}
	mouseclickdrag,left,59,197,1040,1600,10
	send,{ctrl up}
	
	run,C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE

	sleep,700
	
	send,^n
	
	sleep,100
	
	send,^v
	
	sleep,100
	
	mouseclick,right,79,355
	
	send,{up 3}
	send,{enter}
	
	return
}

return
