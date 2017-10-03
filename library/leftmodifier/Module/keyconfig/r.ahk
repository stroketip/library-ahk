goto rkey_end

*r::
If(Spacedown == 1){
	sendInput,{Blind}{F5}
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, r
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, r
	return
}else{
	sendInput,{blind}{r}
	return
}

rkey_end: