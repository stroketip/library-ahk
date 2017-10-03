goto wkey_end

*w::
If(Spacedown == 1){
	sendInput,{up}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, w
	return
}else If(henkandown == 1){
	send,+{end}{del}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, w
	return
}else{
	sendInput,{blind}{w}
	return
}

wkey_end: