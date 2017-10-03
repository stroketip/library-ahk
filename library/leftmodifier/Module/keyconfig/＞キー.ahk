goto >key_end

*sc034::
If(Spacedown == 1){
	sendInput,{Blind}{NumpadDot}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc034
	return
}Else If(henkandown == 1){
	send,^w
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc034
	return
}Else{
	sendInput,{Blind}{sc034}
	return
}

>key_end: