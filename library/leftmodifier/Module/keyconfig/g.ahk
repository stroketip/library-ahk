goto gkey_end

*g::
If(Spacedown == 1){
	send,^w
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, g
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, g
	return
}else{
	sendInput,{blind}{g}
	return
}

gkey_end: