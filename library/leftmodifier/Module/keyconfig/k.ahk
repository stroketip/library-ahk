goto kkey_end

*k::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad2}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, m
	return
}else If(henkandown == 1){
	send,^w
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, m
	return
}else{
	sendInput,{Blind}{k}
	return
}

kkey_end: