SetTitleMatchMode, 2
#SingleInstance force
#ifwinactive C:\Users\stroketip\Desktop\ショートカット\ShogiGUIv0.
f::
{
	x=歩
	shogitxt(x)
	return
}
h::
{
	x=飛
	shogitxt(x)
	return
}
x::
{
	x=角
	shogitxt(x)
	return
}
g::
{
	x=銀
	shogitxt(x)
	return
}

k::
{
	x=金
	shogitxt(x)
	return
}

r::
{
	x=竜
	shogitxt(x)
	return
}

u::
{
	x=馬
	shogitxt(x)
	return
}

e::
`;::
{
	x=桂
	shogitxt(x)
	return
}
o::
{
	x=王
	shogitxt(x)
	return
}

l::
{
	x=香
	shogitxt(x)
	return
}

t::
{
	x=と
	shogitxt(x)
	return
}

y::
.::
{
	x=杏
	shogitxt(x)
	return
}

p::
/::
{
	x=圭
	shogitxt(x)
	return
}
b::
d::
{
	x=全
	shogitxt(x)
	return
}



w::
q::
space::
{
	x=・
	shogitxt(x)
	return
}
+f::
{
	send,v
	x=歩
	shogitxt(x)
	return
}

+g::
{
	send,v
	x=銀
	shogitxt(x)
	return
}

+k::
{
	send,v
	x=金
	shogitxt(x)
	return
}

+r::
{
	send,v
	x=竜
	shogitxt(x)
	return
}

+u::
{
	send,v
	x=馬
	shogitxt(x)
	return
}

+e::
{
	send,v
	x=桂
	shogitxt(x)
	return
}
+o::
{
	send,v
	x=王
	shogitxt(x)
	return

}

+l::
{
	send,v
	x=香
	shogitxt(x)

	return
}

+t::
{
	send,v
	x=と
	shogitxt(x)

	return
}

+y::
+.::
{
	send,v
	x=杏
	shogitxt(x)
	return
}

+p::
+/::
{
	send,v
	x=圭
	shogitxt(x)
	return
}

+d::
+b::
{
	send,v
	x=全
	shogitxt(x)
	return
}
+h::
{
	send,v
	x=飛
	shogitxt(x)
	return
}
+x::
{
	send,v
	x=角
	shogitxt(x)
	return
}

+enter::
+tab::
{
	send,{right 4}
	return
}

:*:ac::
{
	send,^{home}
	
	send,{right 6}
	send,+{end}
	send,+{left}
	send,{del}
	
	send,{down 13}
	send,+{end}

	send,{del}
	
	send,^{home}
	
	send,{down 3}
	send,{right}
	loop 9
	
	{
	send,+{end}
	send,+{left 2}
	send,{bs}
	send,{down}
	}
	
	send,{up 9}
	return
}

vk1Dsc07B & l::
{
	send,{right 4}
	return
}
1::
numpad1::
{
	x=一
	shogitxt(x)
	return
}
2::
numpad2::
{
	x=二
	shogitxt(x)
	return
}
3::
numpad3::
{
	x=三
	shogitxt(x)
	return
}
4::
numpad4::
{
	x=四
	shogitxt(x)
	return
}
5::
numpad5::
{
	x=五
	shogitxt(x)
	return
}
6::
numpad6::
{
	x=六
	shogitxt(x)
	return
}
7::
numpad7::
{
	x=七
	shogitxt(x)
	return
}
8::
numpad8::
{
	x=八
	shogitxt(x)
	return
}
9::
numpad9::
{
	x=九
	shogitxt(x)
	return
}
0::
numpad0::
{
	x=十
	shogitxt(x)
	return
}

m::
{
	send,^{home}
	send,{right 6}
	return
}

+m::
{
	send,^{home}
	send,{down 13}
	send,{right 6}
	return
}


shogitxt(stxt)
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	clipboard := stxt
	clipwait,1
	sleep,100
	send,^v
	
	Clipboard := clipboard_backup
}
