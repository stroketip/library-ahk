goto 8key_end

*8::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad8}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 8
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 8
	return
}Else{
	sendInput,{Blind}{8}
	return
}

8key_end: