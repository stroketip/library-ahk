goto okey_end

*o::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad6}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, o
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, o
	return
}Else{
	sendInput,{Blind}{o}
	return
}


okey_end: