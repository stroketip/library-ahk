goto kakko2key_end

*sc02B::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc02B
	return
}Else If(henkandown == 1){
	sendInput,{Numpadright}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, sc02B
	return
}Else{
	sendInput,{Blind}{sc02B}
	return
}

kakko2key_end: