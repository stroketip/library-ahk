
clipboard_backup = %ClipboardAll%
clipboard=

;今月のノートを開く

a_mm1 = 0%a_mm%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%%a_mm1%

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		run,%textb%
		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、今月のリンクがありませんでした。

