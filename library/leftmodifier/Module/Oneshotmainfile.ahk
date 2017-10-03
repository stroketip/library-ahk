
;-------------------------------------------------------------------
;フラグ用変数初期化。いくらいきなり変数作ってもokとはいえ、これをしないとnullってるらしく、処理が変になる。

henkandown = 0		;変換キー監視。１で押し下げられていると判断。
Spacedown = 0		;スペース監視。１で押し下げられていると判断。
Shiftdown = 0		;シフトが押されてるかどうか。タスク切り替えとシフトトグルで使用。
TaskFlag = 0		;タスク切り替えモードかどうかの判別。
Modrun = 0			;モデファイヤを実行したかどうか、１で実行を記録し、スペースを離しても元のキーは動かない。タイムアウトフラグにも使用。
Spaceshot = 0		;特殊なフラグ。変換→スペースでスペースを出した後に変換Up時に動かないようにするためのもの。コレがないと変換up時にキーが暴発する。
Keybord = 1			;サスペンドに頼らない組み込み用トグルスイッチ。コレがオフだとホットキーは動かない。incrude用。初期状態でon

;頭悪いしこんがらがりそうなのであえてスイッチ方式。メンテナンス性重視で。

Goto,keybord_End
;-------------------------------------------------------------------
;メンテ用。スクロールロックで発動。
$*ScrollLock::msgbox Spacedown %Spacedown%`nhenkandown %henkandown%`nShiftdown %Shiftdown%`nTaskFlag %TaskFlag%`nModrun %Modrun%`nSpaceshot %Spaceshot%`nKeybord %Keybord%
;--------------------------------
;F12でホットキースイッチ。フラグ全初期化
;--------------------------------


SC058::
Keybord := !Keybord ;1行トグル
If(Keybord == 1){

	henkandown := 0
	Spacedown := 0
	Shiftdown := 0
	TaskFlag := 
	Modrun := 0
	Spaceshot := 0
	TimeoutF := 0
	send,{Lshift up}
	send,{LAlt up}
	send,{Lctrl up}
	send,{Rshift up}
	send,{RAlt up}
	send,{Rctrl up}
	SoundPlay,*64
	Msgbox, , , "ワンショットモデファイヤon %Keybord%",1

}Else{

	henkandown := 0
	Spacedown := 0
	Shiftdown := 0
	TaskFlag := 
	Modrun := 0
	Spaceshot := 0
	TimeoutF := 0
	send,{Lshift up}
	send,{LAlt up}
	send,{Lctrl up}
	send,{Rshift up}
	send,{RAlt up}
	send,{Rctrl up}
	SoundPlay,*16
	Msgbox, , , "ワンショットモデファイヤoff %Keybord%",1

}
return

;-------------------------------------------------------------------
;ホットキーの定義。スペースと変換キーで押し込み、開放の4つの処理が必要

;１キーボードホットキーがonか
;２変換キーはonか
;３タイムアウトしているかどうか

;スペースと変換キーの振る舞い。変換キーが押されてる時は普通にスペースを放つが、押されてないときはホットキーとしてフラグを立てる。
*Space::
If(Keybord == 1){

	If(henkandown == 1){

		sendInput,{Blind}{Space}
		Spacedown := 1		;スペースを押した印。ここではモデファイヤではなく変換キーの方に渡すための印として機能。
		Modrun := 1
		TaskFlag := 0
		Shiftdown := 0
		Spaceshot := 1
		return

	}Else{

		henkandown := 0	;
		Spacedown := 1		;スペース押し込みを判定。１で押し込み
		TaskFlag := 0 
		Shiftdown := 0
		KeyWait, space, T0.8 ;タイムアウト判定
		if ErrorLevel{
			Modrun := 1
		}else{
			Modrun := 0
		}
		return

	}

}
sendInput,{Blind}{Space}
return

;スペースを上げたとき。全部初期化するのはおまじない。
*Space Up::
If(Keybord == 1){

	if(henkandown == 1){ ;変換キーを押してスペースを出したかどうか判定。スペースを出した後の暴発対策。フラグ初期化後何もさせずに終了

		Spacedown := 0
		Modrun := 0
		return

	}else if(Modrun == 1){ ;スペース後、モデファイヤを何か出したか。フラグ初期化後何もさせずに終了

		Spacedown := 0
		Modrun := 0
		If(TaskFlag == 1){	;もしタスク切り替えを実行していたらAlt（shift)キーを離す

			TaskFlag := 0
			sendInput,{Blind}{Alt Up}
		}
		If(Shiftdown == 1){	;タスク中shiftalttabを押していたらshiftdownフラグが１になってるのでそれを消去し初期化、shiftキーを離す
			Shftdown := 0
			sendInput,{Blind}{Shift Up}
		}
		return

	}else{
		Send {Blind}{Space} ;モデファイヤとして機能していないのでスペース発射
	}
	Spacedown := 0
	Modrun := 0
	TaskFlag := 0
	return

}
return

;１キーボードホットキーがon
;２スペースキーはonか
;３タイムアウトしているかどうか

;変換キー
*vk1Csc079::
If(Keybord == 1){

	If(Spacedown == 1){

		sendInput,{Blind}{space}
		Modrun := 1
		TaskFlag := 0
		Shiftdown := 0
		return

	}Else{

		henkandown := 1
		Spacedown := 0
		TaskFlag := 0
		Shiftdown := 0
		KeyWait, vk1Csc079, T0.8 ;タイムアウト判定
		if ErrorLevel{
			Modrun := 1
		}else{
			Modrun := 0
		}
		return

	}

}
SendInput,{blind}{vkF4sc029}
Return


;変換キーUp
*vk1Csc079 Up::
If(Keybord == 1){

	if(Spacedown == 1){ ;スペースキーを押しているか否かの判定。modrunは１に。これはスペース側で０になる。変換フラグ初期化後何もさせずに終了

		Modrun := 1
		return

	}else if(Modrun == 1){ ;変換キー後、モデファイヤを何か出したか。フラグ初期化後何もさせずに終了

		henkandown := 0
		Modrun := 0
		If(TaskFlag == 1){	;もしタスク切り替えを実行していたらAlt（shift)キーを離す
			TaskFlag := 0
			sendInput,{Blind}{Alt Up}
		}
		If(Shiftdown == 1){	;タスク中shiftalttabを押していたらshiftdownフラグが１になってるのでそれを消去し初期化、shiftキーを離す
			Shftdown := 0
			sendInput,{Blind}{Shift Up}
		}
		return

	}else If(spaceshot == 1){
		spaceshot := 0 ;Spaceshotはこの時点で１が入ってるから初期化。
	}else{
		SendInput,{blind}{vkF4sc029} ;半角全角切り替え。
	}
	henkandown := 0
	Modrun := 0
	TaskFlag := 0
	return
}
return

;フラグ管理ここまで


/*===========================================
  シフトをトグル化。
  ===========================================
*/

*Lshift::
If(Spacedown == 1) or (henkandown == 1){
	ShiftFlag := !ShiftFlag ;1行トグル
	If(ShiftFlag==1){
		SoundPlay,*64
		Msgbox, , , "ShiftOnトグル %ShiftFlag%",1
		send,{shift down}
	}Else{
		send,{shift up}
		SoundPlay,*16 
		Msgbox, , , "ShiftOffトグル %ShiftFlag%",1
	}
	Modrun := 1
	return
}Else{
	Spacedown := 0
	henkandown := 0
	Shiftdown := 1
	sendInput,{Blind}{shift down}
	keywait,Lshift
	sendInput,{Blind}{shift up}
}

*Rshift::
If(Spacedown == 1) or (henkandown == 1){
	ShiftFlag := !ShiftFlag ;1行トグル
	If(ShiftFlag==1){
		SoundPlay,*64
		Msgbox, , , "ShiftOnトグル %ShiftFlag%",1
		send,{shift down}
	}Else{
		send,{shift up}
		SoundPlay,*16 
		Msgbox, , , "ShiftOffトグル %ShiftFlag%",1
	}
	Modrun := 1
	return
}Else{
	Spacedown := 0
	henkandown := 0
	Shiftdown := 1
	sendInput,{Blind}{shift down}
	keywait,Rshift
	sendInput,{Blind}{shift up}
}

*shift up::Shiftdown := 0

/*===========================================
  ctrlダブルクリック時下がったままになるのを防止。
  ===========================================
*/

*ctrl up::return

;-------------------------------------------------------------------------------
keybord_End: