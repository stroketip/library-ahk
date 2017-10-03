goto <key_end

*sc033::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad0}{Numpad0}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc033
	return
}Else If(henkandown == 1){
	send,^w
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc033
	return
}Else{
	sendInput,{Blind}{sc033}
	return
}

<key_end: