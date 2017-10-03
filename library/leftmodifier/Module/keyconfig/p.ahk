goto pkey_end

*p::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, p
	return
}Else If(henkandown == 1){
	sendInput,{Browser_Back}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, p
	return
}Else{
	sendInput,{Blind}{p}
	return
}


pkey_end: