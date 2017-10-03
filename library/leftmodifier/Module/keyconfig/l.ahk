goto lkey_end

*l::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad3}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, l
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, l
	return
}Else{
	sendInput,{Blind}{l}
	return
}

lkey_end: