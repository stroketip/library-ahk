settitlematchmode,2

winactivate, �����E�H�[�Y -

sleep,100
send,{tab 5}
sleep,100
send,{enter}

WinWait, �����E�H�[�Y -, 
IfWinNotActive, �����E�H�[�Y -, , WinActivate, �����E�H�[�Y -, 
WinWaitActive, �����E�H�[�Y -, 
MouseClick, left,  118,  610
Sleep, 100
send,{tab 5}
send,{enter}
WinWait, Twitter �Ń����N�����L���� -, 
IfWinNotActive, Twitter �Ń����N�����L���� -, , WinActivate, Twitter �Ń����N�����L���� -, 
WinWaitActive, Twitter �Ń����N�����L���� -, 
MouseClick, left,  264,  20
Sleep, 100
Send, ^a
sleep,100
send,^c
sleep,100
send,^{f4}

sleep,100

	run,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ShogiGUIv0.0.6.11\ShogiGUIv0.0.6.11\ShogiGUI.exe
	
	
	WinWait, ShogiGUI, 
IfWinNotActive, ShogiGUI, , WinActivate, ShogiGUI, 
WinWaitActive, ShogiGUI, 

stringreplace,opnhnd,clipboard,/result
clipboard :=
sleep,300
clipboard := opnhnd

sleep,100
Send, {ALTDOWN}{ALTUP}fw
WinWait, WEB�����������荞��, 
IfWinNotActive, WEB�����������荞��, , WinActivate, WEB�����������荞��, 
WinWaitActive, WEB�����������荞��, 
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
