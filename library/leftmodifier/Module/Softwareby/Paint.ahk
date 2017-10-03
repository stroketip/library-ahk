;各exe向けキーボード操作
Goto,Paint_End
;-------------------------------------------------------------------

;--------------------------------
;ペインタ向け設定。サンプルはGIMP
;--------------------------------
#IfWinActive, ahk_class gdkWindowToplevel

1::
	send,a
	Msgbox, , , エアブラシ,1
return

2::
	send,b
	Msgbox, , , ブラシ,1
return

3::
	send,e
	Msgbox, , , 消しゴム,1
return

#IfWinActive,
return

;-------------------------------------------------------------------------------
Paint_End: