
shiftright:
~<+right::
{
	if(doubleflag = 1)
	{
	
	textnum +=1
	
	ToolTip , %textnum%, 170, 10, 1
	
	GetKeyState, temp2, shift
	if (temp2 = D)
	{
		return
	}
	else
	{
		return
	}
	}
	else
	{
	textnum = 1
	
	GetKeyState, temp2, shift
	if temp2 = D
	{
		doubleflag = 1
	}
	ToolTip , %textnum%, 170, 10, 1
	}
	
  return
}

~<+left::
{
	if(doubleflag = 1)
	{
	
	textnum -=1
	
	ToolTip , %textnum%, 170, 10, 1
	
	GetKeyState, temp2, shift
	if temp2 = D
	{
		return
	}
	else
	{
		return
	}
	}
		else
	{
	textnum = -1
	
	GetKeyState, temp2, shift
	if temp2 = D
	{
		doubleflag = 1
	}
	ToolTip , %textnum%, 170, 10, 1
	}
	return
}


~left::
{
	exitapp
}

~right::
{
	exitapp
}

<+c::
{
	if(doubleflag = 1)
	{
		clipboard_backup = %ClipboardAll%
		clipboard=
		
		clipboard := textnum
		clipwait,1
		
		soundplay, C:\Users\stroketip\Desktop\ショートカット\ahk\library\sound\Item.wav
	}
	exitapp
}