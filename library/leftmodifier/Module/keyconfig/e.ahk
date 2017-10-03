goto ekey_end

*e::
If(Spacedown == 1){
	sendInput,!{Right}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, e
	return
}else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, e
	return
}else{
	sendInput,{blind}{e}
	return
}

ekey_end: