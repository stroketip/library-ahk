
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
		
		
		WinWait, ahk_class ENMainFrame, 
IfWinNotActive, ahk_class ENMainFrame, , WinActivate, ahk_class ENMainFrame, 
WinWaitActive, ahk_class ENMainFrame


{
{
	y =170
	send,{blind}{ctrl up}
	loop 10
	{

	pixelgetcolor color,404,%y%

	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	mousemove,404,%y%
	mouseclick, left
	break
	}
	else if data2 = C
	{
	mousemove,404,%y%
	mouseclick, left
	}

	y += 22
	
	}
}

	MouseGetPos, x0, y0
	
	MouseMove, 385,522
	MouseClick, left
	send,^a
	MouseMove, x0, y0

	sleep,300
	send,{tab}
	sleep,100
	send,^{end}
}


		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、今月のリンクがありませんでした。

