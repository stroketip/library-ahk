goto ckey_end

*c::
If(Spacedown == 1){
	send,^w
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, c
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, c
	return
}else{
	sendInput,{blind}{c}
	return
}

ckey_end: