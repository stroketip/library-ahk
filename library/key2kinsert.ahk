IfWinExist,カロリー.xlsx - Excel
{
winactivate,カロリー.xlsx - Excel
return
}
run,C:\Program Files\Microsoft Office\Office15\EXCEL.EXE "C:\Users\stroketip\Dropbox\xls\dデータ\カロリー.xlsx"
return




/*
 SetTitleMatchMode, 2

	ifnotexist, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\num0_id.txt
	{
	sleep,200
	WinGet, active_id_num0, ID, A
	FileAppend , %active_id_num0%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\num0_id.txt
	return
	}
	else
	{
		FileRead, OutputVar, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\num0_id.txt
		winactivate,ahk_id %OutputVar%
		return
	}
*/
return