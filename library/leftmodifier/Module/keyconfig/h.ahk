goto hkey_end

*h::
If(Spacedown == 1){
    send,{Blind}{Volume_down}
	SoundPlay,*64
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, h
	return
}else If(henkandown == 1){
    send,{Blind}{Volume_down}
	SoundPlay,*64
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, h
	return
}else{
	sendInput,{blind}{h}
	return
}

hkey_end: