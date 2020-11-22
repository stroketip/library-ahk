SetTitleMatchMode, 2
/*
#ifwinactive desktop.ahk

vk1Dsc07B & space::
{
	gui,destroy
	return
}

#ifwinactive
*/

	spaceflag = 0
	mainmenu()
	mainmenuflag = 1
	return

#ifwinactive - Evernote

~vk1Dsc07B & space::
{
 

	if(mainmenuflag = 1)
	{
		
		gui,20:destroy
		mainmenuflag =0
		gui,19:destroy
		spaceflag = 0
		hiddenmode = 1

		winactivate,- Evernote
		exitapp
		return
	}
	else
{
	spaceflag = 0
	mainmenu()
	mainmenuflag = 1
	return
}
	return
}

space::
{
	if( mainmenuflag =1)
	{
		if(spaceflag = 1)
		{
			gui,19:destroy
			spaceflag = 0
			
			
			winactivate,- Evernote
			return 
		} 
		else
		{
			spacemenu(spaceflag)
			spaceflag=1
			winactivate,- Evernote
			Return
		}
  

	
	}
	Return
}

a::
b::
c::
d::
e::
f::
g::
h::
i::
j::
k::
l::
m::
n::
o::
p::
q::
r::
s::
t::
u::
v::
w::
x::
y::
z::
numpad0::
0::
`;::

{
	if((spaceflag = 1)&&(mainmenuflag = 1))
	{

		gui 21:restore
		winactivate,Input Data
		send,^a
		winactivate,Input Data
		send,{blind}{ctrl up}{shift up}{vk1Dsc07B up}
		if(gui21<>"1")
		{
		Gui 21: Add, Text, x12 y10 w170 h40 , %a_ThisHotkey%の内容を入力してください
		Gui 21: Add, Edit, x12 y70 w170 h20 Vvtexta,,
		Gui 21: Add, Button, x182 y90 w40 h20 default,set
		
		Gui 21: Show, x368 y265 h116 w226, Input Data
		}
		gui21=1
		return
	}
	else
	{
		temp := a_thishotkey
		
		if(a_thishotkey = ";")
		{
			evertagerase()
			exitapp
			return
		}
		else
		{
		evertagpaste(a_thishotkey)
		}

		return
	}

	
return
}

21buttonset:

{
		gui 21:submit
		
		fileread,temp,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\setword.txt
	
	vtexta = %vtexta%`r

	if(spaceflag=1)
	{

	if (a_ThisHotkey = "a")
	{
	temp := regexreplace(temp,"a,.*?\r","a,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "b")
	{
	temp := regexreplace(temp,"b,.*?\r","b,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "c")
	{
	temp := regexreplace(temp,"c,.*?\r","c,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "d")
	{
	temp := regexreplace(temp,"d,.*?\r","d,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "e")
	{
	temp := regexreplace(temp,"e,.*?\r","e,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "f")
	{
	temp := regexreplace(temp,"f,.*?\r","f,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "g")
	{
	temp := regexreplace(temp,"g,.*?\r","g,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "h")
	{
	temp := regexreplace(temp,"h,.*?\r","h,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "i")
	{
	temp := regexreplace(temp,"i,.*?\r","i,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "j")
	{
	temp := regexreplace(temp,"j,.*?\r","j,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "k")
	{
	temp := regexreplace(temp,"k,.*?\r","k,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "l")
	{
	temp := regexreplace(temp,"l,.*?\r","l,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "m")
	{
	temp := regexreplace(temp,"m,.*?\r","m,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "n")
	{
	temp := regexreplace(temp,"n,.*?\r","n,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "o")
	{
	temp := regexreplace(temp,"o,.*?\r","o,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "p")
	{
	temp := regexreplace(temp,"p,.*?\r","p,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "q")
	{
	temp := regexreplace(temp,"q,.*?\r","q,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "r")
	{
	temp := regexreplace(temp,"r,.*?\r","r,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "s")
	{
	temp := regexreplace(temp,"s,.*?\r","s,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "t")
	{
	temp := regexreplace(temp,"t,.*?\r","t,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "u")
	{
	temp := regexreplace(temp,"u,.*?\r","u,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "v")
	{
	temp := regexreplace(temp,"v,.*?\r","v,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "w")
	{
	temp := regexreplace(temp,"w,.*?\r","w,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "x")
	{
	temp := regexreplace(temp,"x,.*?\r","x,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "y")
	{
	temp := regexreplace(temp,"y,.*?\r","y,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "z")
	{
	temp := regexreplace(temp,"z,.*?\r","z,"vtexta)
	}
	else
	{
	if (a_Thishotkey = "0")
	{
	temp := regexreplace(temp,"0,.*?\r","0,"vtexta)
	}
	if (a_thishotkey = ";")
	{
	evertagerase()
	return
	}
	}}}}}}}}}}}}}}}}}}}}}}}}}}}
	

	
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\setword.txt
	fileappend,%temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\setword.txt
	
		sleep,100
		mainmenu()
		winactivate,- Evernote
	
	return

}  

/*


*/

mainmenu()
{
loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\setword.txt

	{
	mainmenuflag =1
	
	temp=%a_loopreadline%
	stringleft,locate,temp,1
	stringtrimleft,defaulttext,temp,2
	
	text%locate% = %defaulttext%
}

	Gui,20: Add, text, x12 y20 w30 h20 , A
	Gui,20: Add, Text, x52 y20 w120 h20 , %Texta%
	Gui,20: Add, Text, x12 y50 w30 h20 , B
	Gui,20: Add, Text, x52 y50 w120 h20 , %Textb%
	Gui,20: Add, Text, x12 y80 w30 h20 , C
	Gui,20: Add, Text, x52 y80 w120 h20 , %Textc%
	Gui,20: Add, Text, x12 y150 w30 h20 , D
	Gui,20: Add, Text, x52 y150 w120 h20 , %Textd%
	Gui,20: Add, Text, x12 y180 w30 h20 , E
	Gui,20: Add, Text, x52 y180 w120 h20 , %Texte%
	Gui,20: Add, Text, x12 y210 w30 h20 , F
	Gui,20: Add, Text, x52 y210 w120 h20 , %TextF%
	Gui,20: Add, Text, x12 y240 w30 h20 , G
	Gui,20: Add, Text, x52 y240 w120 h20 , %TextG%
	Gui,20: Add, GroupBox, x2 y270 w460 h100 , GroupBox
	Gui,20: Add, GroupBox, x2 y130 w460 h140 , GroupBox
	Gui,20: Add, Text, x12 y110 w30 h20 , H
	Gui,20: Add, Text, x52 y110 w120 h20 , %TextH%
	Gui,20: Add, Text, x192 y20 w30 h20 , I
	Gui,20: Add, Text, x232 y20 w120 h20 , %TextI%
	Gui,20: Add, Text, x192 y50 w30 h20 , J
	Gui,20: Add, Text, x232 y50 w120 h20 , %TextJ%
	Gui,20: Add, Text, x192 y80 w30 h20 , K
	Gui,20: Add, Text, x232 y80 w120 h20 , %TextK%
	Gui,20: Add, Text, x192 y110 w30 h20 , L
	Gui,20: Add, Text, x232 y110 w120 h20 , %TextL%
	Gui,20: Add, Text, x192 y150 w30 h20 , M
	Gui,20: Add, Text, x232 y150 w120 h20 , %TextM%
	Gui,20: Add, Text, x192 y180 w30 h20 , N
	Gui,20: Add, Text, x232 y180 w120 h20 , %TextN%
	Gui,20: Add, Text, x192 y210 w30 h20 , O
	Gui,20: Add, Text, x232 y210 w120 h20 , %TextO%
	Gui,20: Add, Text, x192 y240 w30 h20 , P
	Gui,20: Add, Text, x232 y240 w120 h20 , %TextP%
	Gui,20: Add, GroupBox, x2 y0 w460 h270 , GroupBox
	Gui,20: Add, Text, x52 y290 w120 h20 , %TextQ%
	Gui,20: Add, Text, x12 y290 w30 h20 , Q
	Gui,20: Add, Text, x12 y320 w30 h20 , R
	Gui,20: Add, Text, x52 y320 w120 h20 , %TextR%
	Gui,20: Add, Text, x12 y350 w30 h20 , S
	Gui,20: Add, Text, x52 y350 w120 h20 , %TextS%
	Gui,20: Add, Text, x192 y290 w30 h20 , T
	Gui,20: Add, Text, x232 y290 w120 h20 , %TextT%
	Gui,20: Add, Text, x192 y320 w30 h20 , U
	Gui,20: Add, Text, x232 y320 w120 h20 , %TextU%
	Gui,20: Add, Text, x192 y350 w30 h20 , V
	Gui,20: Add, Text, x232 y350 w120 h20 , %TextV%
	Gui,20: Add, Text, x362 y20 w30 h20 , W
	Gui,20: Add, Text, x392 y20 w50 h20 , %TextW%
	Gui,20: Add, Text, x362 y50 w30 h20 , X
	Gui,20: Add, Text, x392 y50 w50 h20 , %TextX%
	Gui,20: Add, Text, x362 y150 w30 h20 , Y
	Gui,20: Add, Text, x392 y150 w50 h20 , %TextY%
	Gui,20: Add, Text, x362 y180 w30 h20 , Z
	Gui,20: Add, Text, x392 y180 w50 h20 , %TextZ%
	Gui,20: Add, Text, x362 y290 w30 h20 , 0
	Gui,20: Add, Text, x392 y290 w50 h20 , %Text0%

	Gui,20:show
	winactivate,- Evernote
	return
} 

spacemenu(spaceflag)
{

	
	spaceflag = 1
	Gui 19: Add, Text, x28 y20 w220 h50 , A～Zを入力してください
	Gui 19: Add, Text, x22 y90 w230 h50 , Tabキーで入れ替えができます
	Gui 19: Show, x373 y208 h168 w280, selection charactor

	winactivate,- Evernote
	return
}

evertagpaste(temp)
{
	send,{ctrl up}
	y = 170
	
	MouseGetPos, x0, y0
	send,{blind}{ctrl up}
	loop 12
	{

	pixelgetcolor color,500,%y%



	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	sleep,50

	mousemove,500,%y%
	mouseclick ,right
	
	break
	}
	else if data2 = C
	{
	sleep,50
	mousemove,500,%y%
	mouseclick,right

	break
	}

	y += 19
	
	}
	
	sleep,100
	send,t
WinWait, タグの割り当て, 
IfWinNotActive, タグの割り当て, , WinActivate, タグの割り当て, 
WinWaitActive, タグの割り当て, 
	winactivate,タグの割り当て
	sleep,100
	mouseclick,left,83,269,,0

	sleep,150
	
	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\setword.txt
{
	temp2=%a_loopreadline%
	stringleft,locate,temp2,1
	if(temp = locate)
	{
		break
	}
}
	
	stringtrimleft,temp2,temp2,2
	clipboard =
	clipboard = %temp2%
	clipwait,1
	
	sleep,150
	
	send,^v
	sleep,100
	mouseclick,left,229,267,,1
	
	sleep,150
	
	mouseclick,left,162,317,,0
	winactivate,- Evernote
	mousemove,x0, y0
	
	exitapp
	return
}

evertagerase()
{
	send,{ctrl up}
	y =170
	
	MouseGetPos, x0, y0
	send,{blind}{ctrl up}
	loop 12
	{

	pixelgetcolor color,404,%y%



	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	sleep,50

	mousemove,500,%y%
	mouseclick ,right
	
	break
	}
	else if data2 = C
	{
	sleep,50
	mousemove,500,%y%
	mouseclick,right

	break
	}

	y += 19
	
	}
	
	sleep,100
	send,t
	sleep,350

	winactivate,タグの割り当て
	sleep,100
	mouseclick,left,195,217,,0

	sleep,250
	
	send,{enter}

	return
}


20GuiClose:

ExitApp
