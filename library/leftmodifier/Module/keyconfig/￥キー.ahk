goto \key_end

*sc7D::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc7D
	return
}Else If(henkandown == 1){

	KeyWait, sc7D, T0.3 ;感度
	if ErrorLevel{
		send,{Blind}{NumpadEnd}
	}else{
		send,{Blind}{Numpadpgdn}
	}
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc7D
	return

}Else{
	sendInput,{Blind}{sc7D}
	return
}

\key_end: