goto ?key_end

*sc035::
If(Spacedown == 1){

	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc035
	return
}Else If(henkandown == 1){
	send,^z
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc035
	return
}Else{
	sendInput,{Blind}{sc035}
	return
}

?key_end: