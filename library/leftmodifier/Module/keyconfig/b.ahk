goto bkey_end

*b::
If(Spacedown == 1){
	send,#b
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, b ;←連打防止用
	return
}Else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, b ;←連打防止用
	return
}Else{
	sendInput,{Blind}{b}
	return
}

bkey_end: