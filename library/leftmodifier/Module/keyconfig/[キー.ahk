goto kakko1key_end

*sc01B::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc01B
	return
}Else If(henkandown == 1){
	sendInput,{Browser_Forward}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, sc01B
	return
}Else{
	sendInput,{Blind}{sc01B}
	return
}

kakko1key_end: