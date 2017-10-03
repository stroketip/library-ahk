goto skey_end

*s::
If(Spacedown == 1){
	sendInput,{down}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, s
	return
}else If(henkandown == 1){
    send,^s
	SoundPlay,*64
	Msgbox, , , 上書きしました,1
	Modrun := 1
	;keywait, s
	return
}else{
	sendInput,{blind}{s}
	return
}

skey_end: