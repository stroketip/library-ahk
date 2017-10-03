goto 6key_end

*6::
If(Spacedown == 1){

	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, 6
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 6
	return
}else{
	sendInput,{blind}{6}
	return
}

6key_end: