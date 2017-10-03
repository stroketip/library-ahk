;各exe向けキーボード操作
Goto,game_End
;-------------------------------------------------------------------

;--------------------------------
;ゲーム向け設定。サンプルはフリーゲームのヴァンガードプリンセス。
;wasdに１Pの十字移動を割り当て、jioに弱中強。ｍにサポートキャラ。pにシールドが割り当てられているヴァンプリ上のキーコンが大前提で動く。
;qeには斜めジャンプを搭載。スペースにはジャンプを搭載。Hitbox仕様。asdスペースで1回転コマンドも出来る。
;--------------------------------

;--------------------------------
;ヴァンガードプリンセス
;--------------------------------
#IfWinActive, ahk_class KGT2KGAME
Space::w
w::w
a::a
s::s
d::d
j::j
i::i
o::o
m::m
k::k
l::l
p::p
e::	send,{d down}{w down}
e up::send,{d up}[w up}
q::	send,{a down}{w down}
q up::send,{a up}[w up}
Lshift::send,{a down}{s down}
Lshift up::send,{a up}{s up}
c::send,{d down}{s down}
c up::send,{d up}{s up}
$ctrl::return
$Esc::Send,{Blind}{Esc}
#IfWinActive,
return

;-------------------------------------------------------------------------------
game_End: