goto 0key_end

*0::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, 0
	return
}Else If(henkandown == 1){

	;タスク逆送り処理
	If(TaskFlag == 0){
		TaskFlag := 1
		Shiftdown := 1
		sendInput,{Blind}{Alt Down}
		sendInput,{Blind}{Shift Down}
		sendInput,{tab}
		Modrun := 1
		return
	}else if(Shiftdown == 0){
		Shiftdown := 1
		SendInput,{Blind}{Shift Down}
		sendInput,{tab}
		Modrun := 1
		return
	}else{
		sendInput,{tab}
		Modrun := 1
		return
	}
	;ここまで

}Else{
	sendInput,{Blind}{0}
	return
}

0key_end: