settitlematchmode,2

winactivate, 将棋ウォーズ -

sleep,100
send,{tab 5}
sleep,100
send,{enter}

WinWait, 将棋ウォーズ -, 
IfWinNotActive, 将棋ウォーズ -, , WinActivate, 将棋ウォーズ -, 
WinWaitActive, 将棋ウォーズ -, 
MouseClick, left,  118,  610
Sleep, 100
send,{tab 5}
send,{enter}
WinWait, Twitter でリンクを共有する -, 
IfWinNotActive, Twitter でリンクを共有する -, , WinActivate, Twitter でリンクを共有する -, 
WinWaitActive, Twitter でリンクを共有する -, 
MouseClick, left,  264,  20
Sleep, 100
Send, ^a
sleep,100
send,^c
sleep,100
send,^{f4}

sleep,100

	run,C:\Users\stroketip\Desktop\ショートカット\ShogiGUIv0.0.6.11\ShogiGUIv0.0.6.11\ShogiGUI.exe
	
	
	WinWait, ShogiGUI, 
IfWinNotActive, ShogiGUI, , WinActivate, ShogiGUI, 
WinWaitActive, ShogiGUI, 

stringreplace,opnhnd,clipboard,/result
clipboard :=
sleep,300
clipboard := opnhnd

sleep,100
Send, {ALTDOWN}{ALTUP}fw
WinWait, WEBから棋譜を取り込み, 
IfWinNotActive, WEBから棋譜を取り込み, , WinActivate, WEBから棋譜を取り込み, 
WinWaitActive, WEBから棋譜を取り込み, 
sleep,200
Send,+{tab 2}
sleep,100
send,{enter}
sleep,100
send,{tab 2}
send,{enter}

sleep,300

send,{alt}p
sleep,100
send,a
sleep,300
send,{enter}


return

