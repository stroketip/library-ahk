goto atkey_end

*sc01A::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc01A
	return
}Else If(henkandown == 1){
	sendInput,{NumpadUp}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, sc01A
	return
}Else{
	sendInput,{Blind}{sc01A}
	return
}

atkey_end: