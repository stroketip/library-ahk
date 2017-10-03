goto mkey_end

*m::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad0}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, m
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, m
	return
}else{
	sendInput,{Blind}{m}
	return
}

mkey_end: