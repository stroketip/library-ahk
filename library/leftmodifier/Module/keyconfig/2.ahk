goto 2key_end

*2::
If(Spacedown == 1){

	KeyWait, 2, T0.3 ;感度
	if ErrorLevel{
		send,{Blind}{End}
	}else{
		send,{Blind}{pgdn}
	}

	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 2
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 2
	return
}else{
	sendInput,{blind}{2}
	return
}

2key_end: