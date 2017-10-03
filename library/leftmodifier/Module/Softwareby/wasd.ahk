;各exe向けキーボード操作
Goto,wasd_End
;-------------------------------------------------------------------
;--------------------------------
;wasdに上下左右を割り振り。イチイチ割り振るのが面倒なソフト向け。
;サンプルは画像ビュワーのXnviewとメディアプレイヤーのMPCに割り当て
;--------------------------------
#If WinActive("ahk_class MediaPlayerClassicW") or WinActive("ahk_class XmainClass")

*w::Up
*a::Left
*s::Down
*d::Right

#IfWinActive,
return
;-------------------------------------------------------------------------------
wasd_End: