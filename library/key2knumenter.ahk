SetTitleMatchMode, 2

MouseMove, 630, 195

/*
{
	ifnotexist, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numenter_id.txt
	{
	sleep,200
	WinGet, active_id_numenter, ID, A
	FileAppend , %active_id_numenter%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numenter_id.txt
	return
	}
	else
	{
		FileRead, OutputVar, C:\Users\stroketip\Desktop\ショートカット\ahk\library\temp\numenter_id.txt
		winactivate,ahk_id %OutputVar%
		return
	}
}
return
*/