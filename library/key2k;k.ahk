{
	send,^c
	msgbox,a
	temp := clipboard
	clipwait,1
	clipboard := temp
	clipwait,1
	
	run,"C:\Program Files (x86)\g-iworks\�����炭!�A�C�R���G�f�B�^\OkirakuIconEditor.exe"
	
	/*
	%temp%

	winwait,,Copyright(C) 2007 -  g-iworks
	winhide,,Copyright(C) 2007 -  g-iworks
	
	winwait,�摜����A�C�R�����쐬
	winactivate,�摜����A�C�R�����쐬
	sleep,50
	mouseclick,left,78,474,,0
	
	winwait,�����炭!�A�C�R���G�f�B�^
	sleep,50
	winactivate,�����炭!�A�C�R���G�f�B�^
	send,!f
	winactivate,�����炭!�A�C�R���G�f�B�^
	sleep,150
	mouseclick,left,114,202,,0

	sleep,200
	send,C:\Users\stroketip\Pictures\icon\
	send,{enter}
	
	*/
	exitapp
return
}
