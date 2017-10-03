goto jkey_end

*j::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad1}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, j
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, j
	return
}Else{
	sendInput,{Blind}{j}
	return
}

jkey_end: