winwait,�}�C�y�[�W �������� - niconico - Google Chrome
winactivate,�}�C�y�[�W �������� - niconico - Google Chrome
sleep,900
	winactivate,a
	WinGetPos , X, Y, Width, Height, a
	
	width -= 535
	width /= 2
	
	if (width < 0)
	width = 0
	
	width += 180
		
MouseGetPos, x0, y0

MouseMove, width,210
MouseClick, left
MouseMove, x0, y0

return