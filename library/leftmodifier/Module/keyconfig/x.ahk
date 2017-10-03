goto xkey_end

*x::
If(Spacedown == 1){
	send,^y
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, x
	return
}else If(henkandown == 1){
	send,^y
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, x
	return
}else{
	sendInput,{blind}{x}
	return
}

xkey_end: