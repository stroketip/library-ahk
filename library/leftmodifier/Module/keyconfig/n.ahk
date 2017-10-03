goto nkey_end

*n::
If(Spacedown == 1){
	sendInput,{Lwin}
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, n ;←連打防止用
	return
}Else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, n ;←連打防止用
	return
}Else{
	sendInput,{Blind}{n}
	return
}

nkey_end: