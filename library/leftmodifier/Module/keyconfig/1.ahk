goto 1key_end

*1::
If(Spacedown == 1){

	KeyWait, 1, T0.3 ;感度
	if ErrorLevel{
		send,{Blind}{Home}
	}else{
		send,{Blind}{pgup}
	}

	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 1
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 1
	return
}else{
	sendInput,{blind}{1}
	return
}

1key_end: