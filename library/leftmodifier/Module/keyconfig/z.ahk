goto zkey_end

*z::
If(Spacedown == 1){
	send,^z
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, z
	return
}else If(henkandown == 1){
	send,^z
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, z
	return
}else{
	sendInput,{blind}{z}
	return
}

zkey_end: