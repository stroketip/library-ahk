Goto loadahk_end
;--------------------------------------------------------------------------------------------------------
;各デフォルトキー代入

#Include *i %A_ScriptDir%\Module\keyconfig\0.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\1.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\2.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\3.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\4.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\5.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\6.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\7.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\8.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\9.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\[キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\]キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\a.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\b.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\c.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\d.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\e.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\f.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\g.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\h.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\i.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\j.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\k.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\l.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\m.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\n.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\o.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\p.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\q.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\r.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\s.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\t.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\tabキー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\u.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\v.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\w.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\x.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\y.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\z.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\アットマークキー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\半角全角.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＊キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＋キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＜キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＝キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＞キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\？キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\＿キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\～キー.ahk
#Include *i %A_ScriptDir%\Module\keyconfig\￥キー.ahk

;ここまでデフォルトキー定義
;-------------------------------------------------------------------
;ここからSoftwareby設定読み込み。カテゴリ単位で分類。

#Include *i %A_ScriptDir%\Module\Softwareby\Browser.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\Editor.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\explorer.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\Game.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\Mediaplayer.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\Paint.ahk
#Include *i %A_ScriptDir%\Module\Softwareby\wasd.ahk


;--------------------------------------------------------------------------------------------------------
loadahk_end: