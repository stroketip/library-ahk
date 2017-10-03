goto fkey_end

*f::
If(Spacedown == 1){
	send,^f
	;msgbox スペース入力時の処理
	Modrun := 1
	keywait, f
	return
}else If(henkandown == 1){
	
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, f
	return
}else{
	sendInput,{blind}{f}
	return
}

fkey_end: