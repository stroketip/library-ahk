;各exe向けキーボード操作
Goto,browser_End
;-------------------------------------------------------------------
;--------------------------------
;ブラウザ向け設定。サンプルはfirefox
;--------------------------------
#IfWinActive ahk_class MozillaWindowClass

;閉じたタブを復元。
*x::
If(Spacedown == 1){
	Send,{Blind}{Ctrl Down}{t}{Ctrl Up}
	Modrun := 1
	keywait, x
	return
}Else{
	sendInput,{Blind}{x}
	Spacedown := 0
	return
}

;閉じたタブを復元。
*sc073::
If(henkandown == 1){
	Send,{Blind}{Ctrl Down}{t}{Ctrl Up}
	Modrun := 1
	keywait, sc073
	return
}Else{
	sendInput,{Blind}{sc073}
	return
}


;右/右のタブへ
*d::
If(Spacedown == 1){
	KeyWait, d, T0.2
	if ErrorLevel
		Send,^{pgdn}
	else
		Send,{Blind}{right}
	Modrun := 1
	keywait, d
	return
}Else{
	sendInput,{Blind}{d}
	Spacedown := 0
	return
}

;左/左のタブへ
*a::
If(Spacedown == 1){
	KeyWait, a, T0.2
	if ErrorLevel
		Send,^{pgup}
	else
		Send,{Blind}{Left}
	Modrun := 1
	keywait, a
	return
}Else{
	sendInput,{Blind}{a}
	Spacedown := 0
	return
}

;右/右のタブへ
*sc02B::
If(henkandown == 1){
	KeyWait, sc02B, T0.2
	if ErrorLevel
		Send,^{pgdn}
	else
		Send,{Blind}{Numpadright}
	Modrun := 1
	keywait sc02B
	return
}Else{
	sendInput,{blind}{sc02B}
	henkandown := 0
	return
}

;左/左のタブへ
*sc027::
If(henkandown == 1){
	KeyWait, sc027, T0.2
	if ErrorLevel
		Send,^{pgup}
	else
		Send,{Blind}{Numpadleft}
	Modrun := 1
	keywait sc027
	return
}Else{
	sendInput,{blind}{sc027}
	henkandown := 0
	return
}

;リロード
*r::
If(Spacedown == 1){
	send,^{r}
	Modrun := 1
	keywait,r
	return
}Else{
	sendInput,{Blind}{r}
	Spacedown := 0
	return
}
;リロード
*o::
If(henkandown == 1){
	send,^{r}
	Modrun := 1
	keywait,o
	return
}Else{
	sendInput,{Blind}{o}
	henkandown := 0
	return
}

;新しくタブを開く、押しっぱなしで閉じたタブを開き直す
*t::
If(Spacedown == 1){
	KeyWait, t, T0.2
	if ErrorLevel
		Send,{Blind}{Ctrl Down}{Shift Down}{t}{Shift Up}{Ctrl Up}
	else
		Send,{Send,{Blind}{Ctrl Down}{t}{Ctrl Up}
	Modrun := 1
	keywait, t
	return
}Else{
	sendInput,{Blind}{t}
	Spacedown := 0
	return
}
;新しくタブを開く、押しっぱなしで閉じたタブを開き直す
*i::
If(henkandown == 1){
	KeyWait, i, T0.2
	if ErrorLevel
		Send,{Blind}{Ctrl Down}{Shift Down}{t}{Shift Up}{Ctrl Up}
	else
		Send,{Send,{Blind}{Ctrl Down}{t}{Ctrl Up}
	Modrun := 1
	keywait, i
	return
}Else{
	sendInput,{Blind}{i}
	henkandown := 0
	return
}


;検索窓
*f::
If(Spacedown == 1){
PFFlag := !PFFlag
	If(PFFlag==1){
		send,^f
	}else{
		send,{esc}
	}
	Modrun := 1
	return
}Else{
	sendInput,{Blind}{f}
	Spacedown := 0
	return
}

;検索窓
*l::
If(henkandown == 1){
PFFlag := !PFFlag
	If(PFFlag==1){
		send,^f
	}else{
		send,{esc}
	}
	Modrun := 1
	return
}Else{
	sendInput,{Blind}{l}
	henkandown := 0
	return
}



;-------------------------------------------------------------------------------
browser_End: