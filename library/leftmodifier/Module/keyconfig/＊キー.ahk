goto astakey_end

*sc028::
If(Spacedown == 1){
	if (shiftdown == 1){
	send,{NumpadMult} ;なんかしらんけどshiftdown時にキー表記と違うので是正。
	return
	}Else{
	sendInput,{blind}{sc028}
	return
	}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc028
	return
}Else If(henkandown == 1){
	sendInput,{Numpaddown}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, sc028
	return
}Else if (shiftdown == 1){
	send,{NumpadMult} ;上と同じ
	return
	}Else{
	sendInput,{blind}{sc028}
	return
}

astakey_end: