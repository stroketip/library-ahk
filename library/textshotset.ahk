Gui, Add, Edit, x32 y10 w320 h60 , `:`*`:`,`,----`:`:
Gui, Add, Edit, x32 y80 w810 h290 , 
Gui, Add, Button, x732 y380 w100 h30 , OK
gui, add, button, x620 y380 w100 h30 , Cansel

Gui, Show, x474 y178 h423 w876, Text Shot

	send,+{tab}{right}{left 2}+{left 4}


FileRead, strtemp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\textflow_base.txt

Return


buttonok:
GuiControlGet, name,,edit1
GuiControlGet, editting,,edit2

strtemp = %name%`r%strtemp%
stringgetpos,locate,name,`n
if(locate = -1)
{
	filename:= name
}
else
{
	stringleft,filename,name,%locate%
}
stringtrimleft,filename,filename,5
stringtrimright,filename,filename,2


stringreplace,strtemp,strtemp,----,%filename%
strtemp = `r%strtemp%`r

FileAppend , %strtemp%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot.ahk
FileAppend , %editting%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\%filename%.txt

run,C:\Users\stroketip\Desktop\ショートカット\ahk\schedule watcher input.ahk /r
exitapp

buttoncansel:
GuiClose:
ExitApp

