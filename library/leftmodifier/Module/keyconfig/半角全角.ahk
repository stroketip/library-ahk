goto hanzenkey_end

;半角/全角でdelキー。トグルするんで例外的に２コ用意。
*vkF4sc029::
If(Spacedown == 1){
	send,{Del}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, vkF4sc029
	return
}else If(henkandown == 1){
	sendInput,{vkF4sc029}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, vkF4sc029
	return
}else{
	sendInput,{vkF4sc029}
	return
}

*vkF3sc029::
If(Spacedown == 1){
	send,{Del}
	;msgbox スペース入力時の処理
	Modrun := 1
	;keywait, vkF3sc029
	return
}else If(henkandown == 1){
	sendInput,{vkF3sc029}
	;msgbox 変換入力時の処理
	Modrun := 1
	;keywait, vkF3sc029
	return
}else{
	sendInput,{vkF3sc029}
	return
}
hanzenkey_end: