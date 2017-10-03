{
	Gui, Add, Edit, x12 y40 w150 h20 vday, Edit
Gui, Add, Button, x182 y40 w100 h30 default gopen,開く 
Gui, Add, Text, x12 y10 w160 h20 , 何日前のフォルダを開きますか？
; Generated using SmartGUI Creator 4.0
Gui, Show, x269 y155 h79 w298, New GUI Window
Return
}

GuiClose:
ExitApp

open:
{
	gui,submit
	dayfolder(day)
	ExitApp
	return
}

dayfolder(day)
{
	day*=-1
	time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2

	FileCreateDir, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\
	path="C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\"
	run,"C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\"
	WinWait, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%, 
IfWinNotActive, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%, , WinActivate, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%, 
WinWaitActive, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%, 
	send,{tab}
ExitApp
}
	