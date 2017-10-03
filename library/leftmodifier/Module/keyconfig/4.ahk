goto 4key_end

*4::
If(Spacedown == 1){

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

}Else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, 4
	return
}else{
	sendInput,{blind}{4}
	return
}

4key_end: