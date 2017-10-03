goto tkey_end

*t::
If(Spacedown == 1){

	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, t ;←連打防止用
	return
}Else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, t ;←連打防止用
	return
}Else{
	sendInput,{Blind}{t}
	return
}

tkey_end: