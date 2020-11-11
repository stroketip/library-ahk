	run,C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ABBYY Screenshot Reader 11\ABBYY Screenshot Reader 11.lnk
	WinWait, ABBYY Screenshot Reader, 
	IfWinNotActive, ABBYY Screenshot Reader, , WinActivate, ABBYY Screenshot Reader, 
	WinWaitActive, ABBYY Screenshot Reader, 
	
	MouseGetPos, x0, y0
	MouseMove, 125, 68
	MouseClick, left
	
	sleep,100
	
	mouseclick,l,140,152
	
	sleep,100
	
	mouseclick,l,286,71
	

return