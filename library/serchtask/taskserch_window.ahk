;タスクの検索窓１

readline =
radiokaisuu = 0
filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\serchtask\serchtask.txt
;Gui, Add, DropDownList, x202 y-50 w140 h100 , DropDownList
;Gui, Add, Edit, x172 y180 w10 h0 v, Edit
Gui, Font, S13 CDefault, Verdana
Gui, Font, S13 CDefault, Verdana
Gui, Add, Edit, x22 y50 w270 h30 vatai, Edit
Gui, Add, Button, x242 y100 w70 h20 gkensaku default, 検索
Gui, Add, Text, x12 y10 w180 h20 , 過去のタスクを検索します

Gui, Show, x127 y87 h131 w324, New GUI Window
Return

kensaku:
{
	gui,submit
	
	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt
	{
		radiokaisuu++
		ifinstring,a_loopreadline,%atai%
		{
			readline = %readline%%a_loopreadline%`r
		}
		if(radiokaisuu = 3000)
		{
			readline = %readline%serchend.
			break
		}
	}
	
	FileAppend , %readline%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\serchtask\serchtask.txt
	
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\serchtask\serch_funcsion.ahk
	
	exitapp
	return
}

GuiClose:
ExitApp