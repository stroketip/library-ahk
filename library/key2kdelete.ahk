SetTitleMatchMode, 2

	ifnotexist, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numdot_id.txt
	{
	sleep,200
	WinGet, active_id_dot, ID, A
	FileAppend , %active_id_dot%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numdot_id.txt
	return
	}
	else
	{
		FileRead, OutputVar, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numdot_id.txt
		winactivate,ahk_id %OutputVar%
		return
	}

return