;大前提の初期設定。他のahkファイルの読み込みとタイトルマッチモードの変更。優先度変更。ホットキー受け付け数の変更。
SetTitleMatchMode,2
Process, Priority,, High
#MaxHotkeysPerInterval 2000
#UseHook
;代入先ファイル
#Include %A_ScriptDir%\Module\AHKfileload.ahk
#Include *i %A_ScriptDir%\Module\Oneshotmainfile.ahk
#Include *i %A_ScriptDir%\Module\UserScript.ahk
#Include *i %A_ScriptDir%\Module\Templatetext.ahk

;とりあえず走らせた時にいきなり処理開始しないようにGotoで避ける。
Goto Main_end
;--------------------------------------------------------------------------------------------------------------------------
;--------------------------------
;このahkのサスペンド。F1キー
;--------------------------------
Alt & SC03B::exitApp,1

SC03B::
	SuspendOnOff:
	Suspend
	If (A_IsSuspended){			;スクリプトがSuspendコマンドでサスペンドされている場合は「1」= 真(True)になる
		SoundPlay,*16
		Msgbox, , , キーボードスクリプトoff,1
		Return
	}else{
	Msgbox, , , キーボードスクリプトon,1
	}
	Return

; Ctrl + F1: リロード
Ctrl & SC03B::Reload


;--------------------------------------------------------------------------------------------------------------------------
Main_end: