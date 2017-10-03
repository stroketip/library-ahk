
	run,http://pro.webkatu.com/warskifcopy/?id=thidwu
	
	WinWait, 将棋ウォーズ棋譜コピー - Google Chrome, 
IfWinNotActive, 将棋ウォーズ棋譜コピー - Google Chrome, , WinActivate, 将棋ウォーズ棋譜コピー - Google Chrome, 
WinWaitActive, 将棋ウォーズ棋譜コピー - Google Chrome, 
	sleep,1500
	send,{tab 11}
	send,{space}
	sleep,1000
	
	send,{tab}
	sleep,200
	send,+{tab}
	sleep,1000
	send,{space}
	sleep,1000
	send,^w
	
	sleep,500
	
	run,C:\Users\stroketip\Desktop\ショートカット\ShogiGUIv0.0.6.11\ShogiGUIv0.0.6.11\ShogiGUI.exe
	
	WinWait, ShogiGUI, 
IfWinNotActive, ShogiGUI, , WinActivate, ShogiGUI, 
WinWaitActive, ShogiGUI, 
	
	sleep,1500
	
	MouseGetPos, x0, y0
	MouseMove, 779,224
	MouseClick, left
	
	sleep,100
	send,^v
	
	sleep,200
	
	send,{alt}pa
	sleep,100
	send,{enter}
	
	return

