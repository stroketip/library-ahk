Goto User_end
;--------------------------------------------------------------------------------------------------------

/*===========================================
  両Altでお手軽タブ切り替え。
  ===========================================
*/
LAlt & Ralt::Alttab
RAlt & Lalt::ShiftAlttab

/*===========================================
  Appskeyはトグル式。
  ===========================================
*/
Appskey::
	AppsFlag := !AppsFlag ;1行トグル
	If(AppsFlag==1){
		send,{Blind}{Appskey}
	}Else{
		send,{Blind}{esc}
	}
	return

/*===========================================
  CapsLockキーはEnterに
  ===========================================
*/

Capslock::Enter
sc03A::Enter

/*===========================================
 無変換キーの1回押しでコピー、2回押しで切り取り、長押しで貼り付け
  ===========================================
*/


vk1Dsc07B::
if(A_TickCount<WClick)
{ 
WClick=0
send,^x
return
}
WClick:=A_TickCount+400
keywait,vk1Dsc07B,T0.2
if(errorlevel==0)
{
send,^c
return
}
send,^v
keywait,vk1Dsc07B
return


/*===========================================
 プリントスクリーン実行確認メッセージ。なにも反応ないとわかりにくいし。
  ===========================================
*/

PrintScreen::
	sendInput,{Blind}{PrintScreen}
	SoundPlay,*64
	sleep,50
	Msgbox, , , プリントスクリーン実行,1
	return
PrintScreen up::return

/*===========================================
 ctrl+エンターで最前面固定。動画見つつブラウジングとかに。
  ===========================================
*/
ctrl & Enter::
{
WinSet, Topmost, Toggle,A
SoundPlay,*64 
}
return

;--------------------------------
; 右ctrl+上下で音量調節左右でタスク切り替え
;--------------------------------

Rctrl & up::
send,{Blind}{Volume_up}
SoundPlay,*64
return

Rctrl & down::
send,{Blind}{Volume_Down}
SoundPlay,*64
return

Rctrl & Right::AltTab
Rctrl & Left::ShiftAltTab

;--------------------------------
;Esc長押しでウィンドウ閉じる
;--------------------------------
Esc::
keywait,Esc,T0.7
if Errorlevel
	send,!{F4}
else
	sendInput,{blind}{Esc}
keywait,Esc
return

;--------------------------------
;Del長押しで一行削除
;--------------------------------
Del::
  KeyWait, Del, T0.5 ;感度
  if ErrorLevel
    send,{Home}+{End}{Del}
  else
    send,{Del}
  keywait, Del
return

;--------------------------------------------------------------------------------------------------------
User_end: