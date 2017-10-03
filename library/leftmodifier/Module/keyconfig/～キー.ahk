goto namisenkey_end

*sc0D::
If(Spacedown == 1){
	
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, sc0D
	return
}Else If(henkandown == 1){

	KeyWait, sc0D, T0.3 ;感度
	if ErrorLevel{
		send,{Blind}{NumpadHome}
	}else{
		send,{Blind}{Numpadpgup}
	}
	;msgbox 変換入力時の処理
	Modrun := 1
	keywait, sc0D
	return

}Else{
	sendInput,{Blind}{sc0D}
	return
}

namisenkey_end: