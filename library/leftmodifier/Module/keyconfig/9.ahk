goto 9key_end

*9::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad9}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 9
	return
}Else If(henkandown == 1){
	sendInput,#d
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 9
	return
}Else{
	sendInput,{Blind}{9}
	return
}

9key_end: