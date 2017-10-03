
runwait,C:\Users\stroketip\Desktop\ショートカット\mgz170\MeGaZoom.exe
exitapp

ifwinexist ahk_class TMeGaZoomMado
<^+left::
{
	MouseGetPos, x0, y0
	
	MouseMove, x0-1,y0
	return
}

<^+up::
{
	MouseGetPos, x0, y0
	
	MouseMove, x0,y0-1
	return
}

<^+right::
{
	MouseGetPos, x0, y0
	
	MouseMove, x0+1,y0
	return
}

<^+down::
{
	MouseGetPos, x0, y0
	
	MouseMove, x0,y0+1
	return
}


