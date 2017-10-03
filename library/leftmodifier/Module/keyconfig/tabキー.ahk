goto tabkey_end

*tab::
If(Spacedown == 1){
    sendInput,{Blind}{Enter}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, tab
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, tab
	return
}else{
	sendInput,{blind}{tab}
	return
}

tabkey_end: