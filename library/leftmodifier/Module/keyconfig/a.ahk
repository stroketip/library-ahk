goto akey_end

*a::
If(Spacedown == 1){
	sendInput,{left}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, a
	return
}else If(henkandown == 1){
	send,+^s
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, a
	return
}else{
	sendInput,{blind}{a}
	return
}

akey_end: