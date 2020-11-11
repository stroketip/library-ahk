
WinGetPos , X, Y, Width, Height, a

	if(X = 0)
{
	winmove,a,,100,0,950,1035
	return
}

	if(x =100)
{
	winmove,a,,200,0,950,1035
	return
}

	if(x = 200)
{
	winmove,a,,300,0,950,1035
	return
}

	if(x = 300)	
{
winmove,a,,400,0,950,1035
	return
}
winmove,a,,0,0,950,1035
return