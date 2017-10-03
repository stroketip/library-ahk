goto 5key_end

*5::
If(Spacedown == 1){
	send,#d
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, 5
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 5
	return
}else{
	sendInput,{blind}{5}
	return
}

5key_end: