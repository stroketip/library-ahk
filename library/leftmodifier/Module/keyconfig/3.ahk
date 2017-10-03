goto 3key_end

*3::
If(Spacedown == 1){
	
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

}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 3
	return
}else{
	sendInput,{blind}{3}
	return
}

3key_end: