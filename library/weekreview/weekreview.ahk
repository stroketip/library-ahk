
{

;前の日があるので、余計に1日分を読んでおく
	endflag = 
	startflag = 
	winwait,weekly analysis
	sleep,100
	winactivate,weekreview.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\5.txt
	inputbox,endday,始まりの日
	
	startday := fxday(endday,6)
	end2day := fxday(endday,-1)

	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt
	{


		
		templine := a_loopreadline
		
		stringleft,nitiji,templine,10
		stringtrimleft,templine,templine,11

		stringleft,starttime,templine,5
		stringtrimleft,templine,templine,6

		stringleft,endtime,templine,5
		stringtrimleft,templine,templine,6
		
		stringleft,resulttime,templine,5
		stringtrimleft,templine,templine,6

		stringleft,predicttime,templine,5
		stringtrimleft,templine,templine,6

		
		stringleft,kubunn,templine,1
		stringtrimleft,templine,templine,2
		task := templine
		

		
		
	if (endflag = 1)
	{
	if (end2day <> nitiji)
	{
	break
	}
	}
	
		if(startday = nitiji)
		{
			startflag = 1
		}
	
	if(startflag = 1)
	{
		append = %nitiji%`,%starttime%`,%endtime%`,%resulttime%`,%predicttime%`,%kubunn%`,%task%`r
		
	FileAppend , %append%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\5.txt
	}
	
	
	if (end2day = nitiji)
	{
		endflag = 1
	}
	
	}
	
	nowtempd =0
	nowtemph =00
	nowtempm =00
	filereadline,firstday,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\5.txt,1
	stringmid,daycheck,firstday,9,2

	
	
outer:
	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\5.txt
	{
		templine := a_loopreadline
		
		stringleft,nitiji,templine,10
		
		stringmid,kubunn,templine,36,1
		
		stringmid,endtime,templine,18,5
		
		stringleft,endhour,endtime,2
		stringright,endmin,endtime,2
		stringright,nowday,nitiji,2
		
		if(daycheck <> nowday)
		{
			nowtempd++
			nowtemph =0
		}
		daycheck := nowday 

	endmin := round(endmin,-1)
	


		hour:
		while(nowtemph < endhour)
		{
		 	
			loop 6
			{
				
			stringlen,length,nowtemph
			if(length = 1)
			nowtemph = 0%nowtemph%
			
			stringlen,length,nowtempm
			if(length = 1)
			nowtempm = 0%nowtempm%

			%nowtempd%_%nowtemph%%nowtempm% = %kubunn%
			
			nowtempm += 10
			
			if(nowtempm =60)
			break
			}


			nowtempm = 0
			nowtemph++
		}
		

;6:00

		loop 6
		{
			
			if(nowtempm = endmin)
			{
				continue outer
			}
			
			
			stringlen,length,nowtemph
			if(length = 1)
			nowtemph = 0%nowtemph%
			
			stringlen,length,nowtempm
			if(length = 1)
			nowtempm = 0%nowtempm%
			


			%nowtempd%_%nowtemph%%nowtempm% = %kubunn%
			
			nowtempm+=10

			if(nowtempm = 60)
			{
				nowtemph++
				nowtempm = 0
				continue outer
			}
			
			
		}

}
;overhour文を前のdayindexに挿入する
	
	
	day=7
	min=00
	overhour =24
	nexthour = 00
	loop 7
	{
		
		nextday:=day - 1

	hourcheck:
	loop 24
	{
		loop 6
		{
		a:=%day%_%overhour%%min%
		stringlen,length,a
		if(length = 0)
		{
			min=00
			nexthour =00
			overhour =24
			day--
			break hourcheck
		}
		%nextday%_%nexthour%%min% := %day%_%overhour%%min%
		min+=10
		}
		overhour++
		nexthour := overhour -24
		stringlen,length,nexthour
		if(length=1)
		nexthour = 0%nexthour%
		min=00

	}
		nexthour =00
		overhour = 24
		
	
		
	}
	
	nowday=0
	nowh=00
	nowm=00
	
	
	loop 7
	{
	
	loop 24
	{
		
		loop 6
		{
			stringlen,length,nowh
			if(length = 1)
			nowh = 0%nowh%
			clip :=%nowday%_%nowh%%nowm%
			clips = %clips%%clip%`n
			nowm+=10
		}
	nowm=00
	nowh++
	}
	
	nowday++
	clipboard%nowday% = %clips%
	nowh = 00
	clips=
	
	}
	clipboard := clipboard1




pasteweekanalysis:

WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 
MouseClick, left,  298,  17
Sleep, 100




Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
send,{vk1Dsc07B}
Send, d3{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

send,%endday%
send,{enter}
sleep,50








	Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
	send,{vk1Dsc07B}
	Send, c6{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard7
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,{CTRLDOWN}g{CTRLUP}

WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 

	Send, d6{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard6
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,^g
	
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 

	Send, e6{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard5
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,{CTRLDOWN}g{CTRLUP}

WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 

	Send, f6{ENTER}
	
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard4
	clipwait,1

	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,{CTRLDOWN}g{CTRLUP}

WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 

	Send, g6{ENTER}

WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard3
	clipwait,1

	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,{CTRLDOWN}g{CTRLUP}

WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 

Send, h6{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard2
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
	send,{CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
Send, i6{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 

	clipboard=
	clipboard := clipboard1
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}


filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt

taskreadout(endday,startday,"C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt")


	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt

	clipboard_backup = %ClipboardAll%
	clipboard=
	
	StringReplace, temp, temp, `, , `t,all
	
	clipboard =%temp%
	clipwait,1
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 
MouseClick, left,  249,  22
Sleep, 100
Send, {CTRLDOWN}{PGDN}{CTRLUP}
MouseClick, left,  107,  229
Sleep, 100
Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
Send, a2{ENTER}
WinWait, Microsoft Excel - weekanalysis, 
IfWinNotActive, Microsoft Excel - weekanalysis, , WinActivate, Microsoft Excel - weekanalysis, 
WinWaitActive, Microsoft Excel - weekanalysis, 
Send, {CTRLDOWN}v{CTRLUP}
sleep,100
send,^{pgup}
sleep,100
send,^{home}

	
	return
}




taskreadout(startday,endday=0,path=0)
{
	if endday=0
	endday := startday
	
	if path=0
	path=C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\default.txt

	endflag = 
	startflag =

	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt
	{

		
		templine := a_loopreadline
		
		stringleft,nitiji,templine,10
		stringtrimleft,templine,templine,11

		stringleft,starttime,templine,5
		stringtrimleft,templine,templine,6

		stringleft,endtime,templine,5
		stringtrimleft,templine,templine,6
		
		stringleft,resulttime,templine,5
		stringtrimleft,templine,templine,6

		stringleft,predicttime,templine,5
		stringtrimleft,templine,templine,6

		
		stringleft,kubunn,templine,1
		stringtrimleft,templine,templine,2
		task := templine
		

		
		
	if (endflag = 1)
	{
	if (startday <> nitiji)
	{
	break
	}
	}
	
		if(endday = nitiji)
		{
			startflag = 1
		}
	
	if(startflag = 1)
	{
		append = %nitiji%`,%starttime%`,%endtime%`,%resulttime%`,%predicttime%`,%kubunn%`,%task%`r
		
	FileAppend , %append%, %path%
	}
	
	
	if (startday = nitiji)
	{
		endflag = 1
	}
	
	}
	
	return
}

fxday(fxday,x)
{
	stringleft,year,fxday,4
	stringmid,month,fxday,6,2
	stringmid,day,fxday,9,2

	redate = %year%%month%%day%0000
	
	envadd,redate,x,day
	
	stringleft,year,redate,4
	stringmid,month,redate,5,2
	stringmid,day,redate,7,2
	
	redate= %year%-%month%-%day%
	
	return redate
}	