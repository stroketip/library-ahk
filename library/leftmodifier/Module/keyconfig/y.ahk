goto ykey_end

*y::
If(Spacedown == 1){
    send,{Blind}{Volume_up}
	SoundPlay,*64
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, y
	return
}else If(henkandown == 1){
    send,{Blind}{Volume_up}
	SoundPlay,*64
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, y
	return
}else{
	sendInput,{blind}{y}
	return
}

ykey_end: