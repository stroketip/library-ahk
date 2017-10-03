goto dkey_end

*d::
If(Spacedown == 1){
	sendInput,{Right}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, d
	return
}else If(henkandown == 1){

	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, d
	return
}else{
	sendInput,{blind}{d}
	return
}

dkey_end: