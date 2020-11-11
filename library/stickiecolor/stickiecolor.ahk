settitlematchmode,2

{

WinGetTitle, wtitle , A

Gui, Add, Picture, x12 y19 w430 h270 , C:\Users\stroketip\Desktop\ショートカット\ahk\library\stickiecolor\ScreenClip [2].png
; Generated using SmartGUI Creator 4.0
Gui, Show, x629 y382 h314 w465, New GUI Window

	WinWait, %wtitle%, 
IfWinNotActive, %wtitle%, , WinActivate, %wtitle%, 
WinWaitActive, %wtitle%, 

Input, UserInput, L1 C, {enter}.{esc}{tab},
if ErrorLevel = Max
{
	if(UserInputs = "a")
	{
		stickiesiromihon(153,204,255)
		stickiesblackfont()
		ExitApp
	}
	else if(UserInput = "b")
	{
	stickiesiromihon(255,255,204)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "c")
	{
	stickiesiromihon(255,153,0)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "d")
	{
	stickiesiromihon(255,0,0)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "e")
	{
	stickiesiromihon(0,255,0)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "f")
	{
	stickiesiromihon(0,102,204)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "g")
	{
	stickiesiromihon(204,255,204)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "h")
	{
	stickiesiromihon(255,0,255)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "i")
	{
	stickiesiromihon(255,255,153)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "j")
	{
	stickiesiromihon(51,51,153)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "k")
	{
	stickiesiromihon(5,2,70)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "l")
	{
	stickiesiromihon(51,103,102)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "m")
	{
	stickiesiromihon(0,0,0)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "n")
	{
	stickiesiromihon(51,51,51)
	stickieswhitefont()
	ExitApp
}
	else if(UserInput = "o")
	{
	stickiesiromihon(204,153,255)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "p")
	{
	stickiesiromihon(153,128,153)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "q")
	{
	stickiesiromihon(102,102,153)
	stickieswhitefont()
	ExitApp
	}
	else if(UserInput = "r")
	{
	stickiesiromihon(255,128,128)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "s")
	{
	stickiesiromihon(192,192,192)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "t")
	{
	stickiesiromihon(255,204,153)
	stickiesblackfont()
	ExitApp
}
	else if(UserInput = "u")
	{
	stickiesiromihon(0,51,102)
	stickieswhitefont()
	ExitApp
	}
	else if(UserInput = "v")
	{
	stickiesiromihon(0,128,128)
	stickieswhitefont()
	ExitApp
	}
	else if(UserInput = "w")
	{
	stickiesiromihon(204,204,255)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "x")
	{
	stickiesiromihon(0,255,255)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "y")
	{
	stickiesiromihon(255,153,204)
	stickiesblackfont()
	ExitApp
	}
	else if(UserInput = "z")
	{
	stickiesiromihon(128,128,128)
	stickieswhitefont()
	ExitApp
	}



ExitApp


return

}

{
GuiClose:
ExitApp

return
}
}


stickiesiromihon(x,y,z)
{
	send,{vk1Dsc07B}
	send,{appskey}
	send,{up 6}
	send,{enter}
	send,{tab 2}
	send,%x%
	send,{tab}
	send,%y%
	send,{tab}
	send,%z%
;	
	sleep,200
;
	send,{enter}
	return
}

Stickieswhitefont()
{
	send,{shift up}
	send,{win up}
	send,^a
	mouseclick,r,10,33,2
	send,{up 9}
	send,{right}
	send,{up 2}
	send,{enter}
	send,{right}
	return
}

stickiesblackfont()
{
	send,{shift up}
	send,{win up}
	send,^a
	mouseclick,r,10,33,2
	send,{up 9}
	send,{right}
	send,{up 6}
	send,{enter}
	send,{right}
	return
}

