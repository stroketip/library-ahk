goto 7key_end

*7::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad7}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 7
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 7
	return
}Else{
	sendInput,{Blind}{7}
	return
}

7key_end: