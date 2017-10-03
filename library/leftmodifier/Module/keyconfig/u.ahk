goto ukey_end

*u::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad4}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, u
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, u
	return
}Else{
	sendInput,{Blind}{u}
	return
}

ukey_end: