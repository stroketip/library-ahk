;各exe向けキーボード操作
Goto,Editor_End
;-------------------------------------------------------------------

;--------------------------------
;sakuraエディタ
;--------------------------------
#IfWinActive ahk_class TextEditorWindowW111

*1::
If(Spacedown == 1){
	KeyWait, 1, T0.2 ;感度
	if ErrorLevel{
		send,^{Home}
	}else{
		send,{Blind}{pgup}
	}
	Modrun := 1
	keywait, 1
	return
}Else{
	sendInput,{Blind}{1}
	Spacedown := 0
	return
}
*2::
If(Spacedown == 1){
	KeyWait, 2, T0.2 ;感度
	if ErrorLevel{
		send,^{End}
	}else{
		send,{Blind}{pgdn}
	}
	Modrun := 1
	keywait, 2
	return
}Else{
	sendInput,{Blind}{2}
	return
}

*e::
If(Spacedown == 1){
	send,^z
	Modrun := 1
	return
}Else{
	sendInput,{Blind}{e}
	Spacedown := 0
	return
}
*r::
If(Spacedown == 1){
	send,^r
	Modrun := 1
	return
}Else{
	sendInput,{Blind}{r}
	Spacedown := 0
	return
}

#IfWinActive
return



;-------------------------------------------------------------------------------
Editor_End: