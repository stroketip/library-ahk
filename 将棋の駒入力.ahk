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
	sleep,100
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

^m::
{
	
fu=18
kyou=4
kei=4

kin=4
gin=4
hisha=2
kaku=2
ou=2

	komaflag =0

send,^a
send,^c

komacount := clipboard
;stringtrimleft,komacount,komacount,5
/*
foundpos := regexmatch(komacount,"`r")
msgbox,%foundpos%
*/


loop,14
{
	komacount := regexmatch(clipboard,"`r")
stringleft,line%a_index%,clipboard,komacount
stringtrimleft,clipboard,clipboard,komacount

;msgbox,line%a_index%


}

bankoma=%line4%%line5%%line6%%line7%%line8%%line9%%line10%%line11%%line12%
komakey:= bankoma


loop,2000
{
stringleft,komatop,komakey,1
stringtrimleft,komakey,komakey,1

if(komatop="��") or (komatop="��")
{
	fu--
;	msgbox,%fu%
}

if(komatop="��") or (komatop="��")
{
	kyou--
;	msgbox,%kyou%
}

if(komatop="�j") or (komatop="�\")
{
	kei--
;	msgbox,%kei%
}

if(komatop="��") or (komatop="�S")
{
	gin--
;	msgbox,%kei%
}
if(komatop="��")
{
	kin--
;	msgbox,%kin%
}
if(komatop="�p") or (komatop="�n")
{
	kaku--
;	msgbox,%kaku%
}
if(komatop="��") or (komatop="��")
{
	hisha--
;	msgbox,%hisha%
}
if(komatop="��") or (komatop="��")
{
	ou--
;	msgbox,%ou%
}
if(komatop="��")
{
	break
}
}



sentemotigoma := line14


loop,2000
{
stringleft,komatop,sentemotigoma,1
stringtrimleft,sentemotigoma ,sentemotigoma,1

if(komatop="��")
{
	komaflag=1
;	msgbox,%fu%
}

if(komatop="��")
{
	komaflag=2
;	msgbox,%kyou%
}

if(komatop="�j")
{
	komaflag=3
;	msgbox,%kei%
}

if(komatop="��")
{
	komaflag=4
;	msgbox,%kei%
}
if(komatop="��")
{
	komaflag=5
;	msgbox,%kin%
}
if(komatop="�p")
{
	komaflag=6
;	msgbox,%kaku%
}
if(komatop="��")
{
	komaflag=7
;	msgbox,%hisha%
}
if(komatop="��")
{
	komaflag=8
;	msgbox,%ou%
}
if(komatop="��")
{
;	komakazu=1
	if(komaflag = 1)
	{
		fu--
	}
	if(komaflag = 2)
	{
		kyou--
	}
	if(komaflag = 3)
	{
		kei--
	}	
	if(komaflag = 4)
	{
		gin--
	}	
	if(komaflag = 5)
	{
		kin--
	}	
	if(komaflag = 6)
	{
		kaku--
	}	
	if(komaflag = 7)
	{
		hisha--
	}	

	komaflag =0
}

if(komatop="��")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=2
	}
	if(komaflag = 2)
	{
		kyou-=2
	}
	if(komaflag = 3)
	{
		kei-=2
	}	
	if(komaflag = 4)
	{
		gin-=2
	}	
	if(komaflag = 5)
	{
		kin-=2
	}	
	if(komaflag = 6)
	{
		kaku-=2
	}	
	if(komaflag = 7)
	{
		hisha-=2
	}	

	komaflag =0

}

if(komatop="�O")
{
;	komakazu=3

	if(komaflag = 1)
	{
		fu-=3
	}
	if(komaflag = 2)
	{
		kyou-=3
	}
	if(komaflag = 3)
	{
		kei-=3
	}	
	if(komaflag = 4)
	{
		gin-=3
	}	
	if(komaflag = 5)
	{
		kin-=3
	}	
	if(komaflag = 6)
	{
		kaku-=3
	}	
	if(komaflag = 7)
	{
		hisha-=3
	}	

	komaflag =0


}

if(komatop="�l")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=4
	}
	if(komaflag = 2)
	{
		kyou-=4
	}
	if(komaflag = 3)
	{
		kei-=4
	}	
	if(komaflag = 4)
	{
		gin-=4
	}	
	if(komaflag = 5)
	{
		kin-=4
	}	
	if(komaflag = 6)
	{
		kaku-=4
	}	
	if(komaflag = 7)
	{
		hisha-=4
	}	

	komaflag =0

}

if(komatop="��")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=5
	}
	if(komaflag = 2)
	{
		kyou-=5
	}
	if(komaflag = 3)
	{
		kei-=5
	}	
	if(komaflag = 4)
	{
		gin-=5
	}	
	if(komaflag = 5)
	{
		kin-=5
	}	
	if(komaflag = 6)
	{
		kaku-=5
	}	
	if(komaflag = 7)
	{
		hisha-=5
	}	

	komaflag =0

}

if(komatop="�Z")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=6
	}
	if(komaflag = 2)
	{
		kyou-=6
	}
	if(komaflag = 3)
	{
		kei-=6
	}	
	if(komaflag = 4)
	{
		gin-=6
	}	
	if(komaflag = 5)
	{
		kin-=6
	}	
	if(komaflag = 6)
	{
		kaku-=6
	}	
	if(komaflag = 7)
	{
		hisha-=6
	}	

	komaflag =0

}

if(komatop="��")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=7
	}
	if(komaflag = 2)
	{
		kyou-=7
	}
	if(komaflag = 3)
	{
		kei-=7
	}	
	if(komaflag = 4)
	{
		gin-=7
	}	
	if(komaflag = 5)
	{
		kin-=7
	}	
	if(komaflag = 6)
	{
		kaku-=7
	}	
	if(komaflag = 7)
	{
		hisha-=7
	}	

	komaflag =0

}

if(komatop="��")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=8
	}
	if(komaflag = 2)
	{
		kyou-=8
	}
	if(komaflag = 3)
	{
		kei-=8
	}	
	if(komaflag = 4)
	{
		gin-=8
	}	
	if(komaflag = 5)
	{
		kin-=8
	}	
	if(komaflag = 6)
	{
		kaku-=8
	}	
	if(komaflag = 7)
	{
		hisha-=8
	}	

	komaflag =0

}

if(komatop="��")
{
	
;	komakazu=1
	if(komaflag = 1)
	{
		fu-=9
	}
	if(komaflag = 2)
	{
		kyou-=9
	}
	if(komaflag = 3)
	{
		kei-=9
	}	
	if(komaflag = 4)
	{
		gin-=9
	}	
	if(komaflag = 5)
	{
		kin-=9
	}	
	if(komaflag = 6)
	{
		kaku-=9
	}	
	if(komaflag = 7)
	{
		hisha-=9
	}	

	komaflag =0

}

if(komatop="`r")
{
	break
}
}


if(fu=0)
{
	gotemotigoma=
}
if(fu=1)
{
	gotemotigoma=����
}
if(fu=2)
{
	gotemotigoma=����
}
if(fu=3)
{
	gotemotigoma=���O
}
if(fu=4)
{
	gotemotigoma=���l
}
if(fu=5)
{
	gotemotigoma=����
}
if(fu=6)
{
	gotemotigoma=���Z
}
if(fu=7)
{
	gotemotigoma=����
}
if(fu=8)
{
	gotemotigoma=����
}
if(fu=9)
{
	gotemotigoma=����
}
if(fu=10)
{
	gotemotigoma=���\
}
if(fu=11)
{
	gotemotigoma=���\��
}
if(fu=12)
{
	gotemotigoma=���\��
}
if(fu=13)
{
	gotemotigoma=���\�O
}
if(fu=14)
{
	gotemotigoma=���\�l
}
if(fu=15)
{
	gotemotigoma=���\��
}
if(fu=16)
{
	gotemotigoma=���\�Z
}
if(fu=17)
{
	gotemotigoma=���\��
}
if(fu=18)
{
	gotemotigoma=���\��
}

if(kyou=0)
{
}
if(kyou=1)
{
	gotemotigoma=%gotemotigoma% ����
}
if(kyou=2)
{
	gotemotigoma=%gotemotigoma% ����
}
if(kyou=3)
{
	gotemotigoma=%gotemotigoma% ���O
}
if(kyou=4)
{
	gotemotigoma=%gotemotigoma% ���l
}

if(kei=0)
{
}
if(kei=1)
{
	gotemotigoma=%gotemotigoma% �j��
}
if(kei=2)
{
	gotemotigoma=%gotemotigoma% �j��
}
if(kei=3)
{
	gotemotigoma=%gotemotigoma% �j�O
}
if(kei=4)
{
	gotemotigoma=%gotemotigoma% �j�l
}

if(gin=0)
{
}
if(gin=1)
{
	gotemotigoma=%gotemotigoma% ���
}
if(gin=2)
{
	gotemotigoma=%gotemotigoma% ���
}
if(gin=3)
{
	gotemotigoma=%gotemotigoma% ��O
}
if(gin=4)
{
	gotemotigoma=%gotemotigoma% ��l
}

if(kin=0)
{
}
if(kin=1)
{
	gotemotigoma=%gotemotigoma% ����
}
if(kin=2)
{
	gotemotigoma=%gotemotigoma% ����
}
if(kin=3)
{
	gotemotigoma=%gotemotigoma% ���O
}
if(kin=4)
{
	gotemotigoma=%gotemotigoma% ���l
}

if(kaku=0)
{
}
if(kaku=1)
{
	gotemotigoma=%gotemotigoma% �p��
}
if(kaku=2)
{
	gotemotigoma=%gotemotigoma% �p��
}

if(hisha=0)
{
}
if(hisha=1)
{
	gotemotigoma=%gotemotigoma% ���
}
if(hisha=2)
{
	gotemotigoma=%gotemotigoma% ���
}

gotemotigoma=���̎���F%gotemotigoma%

clipboard_backup = %ClipboardAll%
clipboard:=gotemotigoma
sleep,100
send,^{home}
sleep,100
send,+{end}
sleep,100
send,^v
Clipboard := clipboard_backup


/*
msgbox,fu=%fu%`rkyou=%kyou%`rkei=%kei%`rgin=%gin%`rkin=%kin%`rkaku=%kaku%`rhisha=%hisha%`rou=%ou%`r
*/

/*
msgbox,%line1%
msgbox,%line2%
msgbox,%line3%
msgbox,%line4%
msgbox,%line5%
msgbox,%line6%
msgbox,%line7%
msgbox,%line8%
msgbox,%line9%
msgbox,%line10%
msgbox,%line11%
msgbox,%line12%
msgbox,%line13%
msgbox,%line14%
*/
;foundpos := regexmatch(komacount,"`r")


return
}
