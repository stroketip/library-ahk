goto ikey_end

*i::
If(Spacedown == 1){
	sendInput,{Blind}{Numpad5}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, i
	return
}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, i
	return
}Else{
	sendInput,{Blind}{i}
	return
}

ikey_end: