SetTitleMatchMode, 2
#SingleInstance force
#ifwinactive C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ShogiGUIv0.
f::
{
	x=��
	shogitxt(x)
	return
}
h::
{
	x=��
	shogitxt(x)
	return
}
x::
{
	x=�p
	shogitxt(x)
	return
}
g::
{
	x=��
	shogitxt(x)
	return
}

k::
{
	x=��
	shogitxt(x)
	return
}

r::
{
	x=��
	shogitxt(x)
	return
}

u::
{
	x=�n
	shogitxt(x)
	return
}

e::
`;::
{
	x=�j
	shogitxt(x)
	return
}
o::
{
	x=��
	shogitxt(x)
	return
}

l::
{
	x=��
	shogitxt(x)
	return
}

t::
{
	x=��
	shogitxt(x)
	return
}

y::
.::
{
	x=��
	shogitxt(x)
	return
}

p::
/::
{
	x=�\
	shogitxt(x)
	return
}
b::
d::
{
	x=�S
	shogitxt(x)
	return
}



w::
q::
space::
{
	x=�E
	shogitxt(x)
	return
}
+f::
{
	send,v
	x=��
	shogitxt(x)
	return
}

+g::
{
	send,v
	x=��
	shogitxt(x)
	return
}

+k::
{
	send,v
	x=��
	shogitxt(x)
	return
}

+r::
{
	send,v
	x=��
	shogitxt(x)
	return
}

+u::
{
	send,v
	x=�n
	shogitxt(x)
	return
}

+e::
{
	send,v
	x=�j
	shogitxt(x)
	return
}
+o::
{
	send,v
	x=��
	shogitxt(x)
	return

}

+l::
{
	send,v
	x=��
	shogitxt(x)

	return
}

+t::
{
	send,v
	x=��
	shogitxt(x)

	return
}

+y::
+.::
{
	send,v
	x=��
	shogitxt(x)
	return
}

+p::
+/::
{
	send,v
	x=�\
	shogitxt(x)
	return
}

+d::
+b::
{
	send,v
	x=�S
	shogitxt(x)
	return
}
+h::
{
	send,v
	x=��
	shogitxt(x)
	return
}
+x::
{
	send,v
	x=�p
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
	x=��
	shogitxt(x)
	return
}
2::
numpad2::
{
	x=��
	shogitxt(x)
	return
}
3::
numpad3::
{
	x=�O
	shogitxt(x)
	return
}
4::
numpad4::
{
	x=�l
	shogitxt(x)
	return
}
5::
numpad5::
{
	x=��
	shogitxt(x)
	return
}
6::
numpad6::
{
	x=�Z
	shogitxt(x)
	return
}
7::
numpad7::
{
	x=��
	shogitxt(x)
	return
}
8::
numpad8::
{
	x=��
	shogitxt(x)
	return
}
9::
numpad9::
{
	x=��
	shogitxt(x)
	return
}
0::
numpad0::
{
	x=�\
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
