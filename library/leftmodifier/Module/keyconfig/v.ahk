goto vkey_end

*v::
If(Spacedown == 1){
	send,#e
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, v ;←連打防止用
	return
}Else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, v ;←連打防止用
	return
}Else{
	sendInput,{Blind}{v}
	return
}

vkey_end: