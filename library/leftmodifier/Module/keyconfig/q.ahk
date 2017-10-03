goto qkey_end

*q::
If(Spacedown == 1){
	sendInput,{BS}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, q
	return
}else If(henkandown == 1){
	send,+{home}{BS}
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, q
	return
}else{
	sendInput,{blind}{q}
	return
}

qkey_end: