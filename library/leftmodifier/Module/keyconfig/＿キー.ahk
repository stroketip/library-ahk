goto _key_end

*sc073::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc073
	return
}Else If(henkandown == 1){
	send,^y
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc073
	return
}Else{
	sendInput,{Blind}{sc073}
	return
}

_key_end: