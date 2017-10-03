goto equalkey_end

*sc0C::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc0C
	return
}Else If(henkandown == 1){

	;タスク順送り
	If(TaskFlag == 0){
		TaskFlag := 1
		sendInput,{Blind}{Alt Down}
		sendInput,{tab}
		Modrun := 1
		return
	}else If(Shiftdown == 1){
		Shiftdown := 0
		SendInput,{Blind}{Shift Up}
		SendInput,{tab}
		Modrun := 1
		return
	}else{
		SendInput,{tab}
		Modrun := 1
		return
	}
	;ここまで

}Else{
	sendInput,{Blind}{sc0C}
	return
}

equalkey_end: