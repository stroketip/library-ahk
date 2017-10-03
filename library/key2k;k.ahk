{
	send,^c
	msgbox,a
	temp := clipboard
	clipwait,1
	clipboard := temp
	clipwait,1
	
	run,"C:\Program Files (x86)\g-iworks\おきらく!アイコンエディタ\OkirakuIconEditor.exe"
	
	/*
	%temp%

	winwait,,Copyright(C) 2007 -  g-iworks
	winhide,,Copyright(C) 2007 -  g-iworks
	
	winwait,画像からアイコンを作成
	winactivate,画像からアイコンを作成
	sleep,50
	mouseclick,left,78,474,,0
	
	winwait,おきらく!アイコンエディタ
	sleep,50
	winactivate,おきらく!アイコンエディタ
	send,!f
	winactivate,おきらく!アイコンエディタ
	sleep,150
	mouseclick,left,114,202,,0

	sleep,200
	send,C:\Users\stroketip\Pictures\icon\
	send,{enter}
	
	*/
	exitapp
return
}
