goto +key_end

*sc027::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc027
	return
}Else If(henkandown == 1){
	sendInput,{Numpadleft}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, sc027
	return
}Else{
	sendInput,{Blind}{sc027}
	return
}
+key_end: