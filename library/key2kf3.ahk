
clipboard_backup = %ClipboardAll%
clipboard=


;+1月
a_mm1 = %a_mm% +1
a_mm1++
a_mm1 = 0%a_mm1%
stringright,a_mm1,a_mm1,2

if(a_mm1=13)
{
	a_mm1-=12
	ayear:= a_yyyy
	ayear++
	a_mm1 = %ayear%01
}
else
{
a_mm1 = %A_YYYY%%a_mm1%
}

;msgbox,%a_mm1%

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		msgbox,%textb%
		run,%textb%
		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、来月のリンクがありませんでした。

