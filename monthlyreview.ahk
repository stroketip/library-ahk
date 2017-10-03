
{


	run,C:\Users\stroketip\Dropbox\xls\rレビュー\monthly.xlsx
;前の日があるので、余計に1日分を読んでおく
	endflag = 
	startflag = 
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\5.txt
	inputbox,endday,始まりの日
	winwait,Microsoft Excel - monthly
	
	sleep,200
	
	winactivate,monthlyreview.ahk
		
	eoday := eodays(endday)
	eoday--
	
	startday := fxday(endday,eoday)
	end2day := fxday(endday,-1)

	sleep,100

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
	
	
	day=32
	min=00
	overhour =24
	nexthour = 00
	loop 31
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
	
	
	loop 31
	{
	
	loop 24
	{
		
		loop 6
		{
			stringlen,length,nowh
			if(length = 1)
			nowh = 0%nowh%
			clip :=%nowday%_%nowh%%nowm%
			clips = %clips%%clip%`r`n
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

WinWait, Microsoft Excel - monthly, 
IfWinNotActive, Microsoft Excel - monthly, , WinActivate, Microsoft Excel - monthly, 
WinWaitActive, Microsoft Excel - monthly, 
MouseClick, left,  298,  17
Sleep, 100




;---------------------------------------------


Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
send,{vk1Dsc07B}

clipboard_backup = %ClipboardAll%
clipboard=

clipboard=[monthly.xlsx]計算シート!a1
clipwait,1

Send,^v {ENTER}
Clipboard := clipboard_backup
WinWait, Microsoft Excel - monthly, 
IfWinNotActive, Microsoft Excel - monthly, , WinActivate, Microsoft Excel - monthly, 
WinWaitActive, Microsoft Excel - monthly, 


temp := eoday
temp++

pasteday("b4",temp)
temp--
pasteday("c4",temp)
temp--
pasteday("d4",temp)
temp--
pasteday("e4",temp)
temp--
pasteday("f4",temp)
temp--
pasteday("g4",temp)
temp--
pasteday("h4",temp)
temp--
pasteday("i4",temp)
temp--
pasteday("j4",temp)
temp--
pasteday("k4",temp)
temp--
pasteday("l4",temp)
temp--
pasteday("m4",temp)
temp--
pasteday("n4",temp)
temp--
pasteday("o4",temp)
temp--
pasteday("p4",temp)
temp--
pasteday("q4",temp)
temp--
pasteday("r4",temp)
temp--
pasteday("s4",temp)
temp--
pasteday("t4",temp)
temp--
pasteday("u4",temp)
temp--
pasteday("v4",temp)
temp--
pasteday("w4",temp)
temp--
pasteday("x4",temp)
temp--
pasteday("y4",temp)
temp--
pasteday("z4",temp)
temp--

pasteday("aa4",temp)
temp--
pasteday("ab4",temp)
temp--
pasteday("ac4",temp)
temp--

if(temp >0)
{
pasteday("ad4",temp)
temp--
}

if(temp >0)
{
pasteday("ae4",temp)
temp--
}

if(temp >0)
{
pasteday("af4",temp)
temp--
}

;----------------------------------------------



filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt

taskreadout(endday,startday,"C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt")


	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\4.txt

	clipboard_backup = %ClipboardAll%
	clipboard=
	
	StringReplace, temp, temp, `, , `t,all
	
	clipboard =%temp%
	clipwait,1
WinWait, Microsoft Excel - monthly, 
IfWinNotActive, Microsoft Excel - monthly, , WinActivate, Microsoft Excel - monthly, 
WinWaitActive, Microsoft Excel - monthly, 

Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
send,{vk1Dsc07B}
clipboard_backup = %ClipboardAll%
clipboard=
clipboard= [monthly.xlsx]Sheet2!$A$2
clipwait,1

Send,^v{ENTER}
Clipboard := clipboard_backup

WinWait, Microsoft Excel - monthly, 
IfWinNotActive, Microsoft Excel - monthly, , WinActivate, Microsoft Excel - monthly, 
WinWaitActive, Microsoft Excel - monthly, 
Send, {CTRLDOWN}v{CTRLUP}

send,^g


Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
send,{vk1Dsc07B}
clipboard_backup = %ClipboardAll%
clipboard=
clipboard= [monthly.xlsx]印刷ページ!$A$1
clipwait,1

Send,^v{ENTER}


sleep,300
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


; 「2011-10」-05　の月末日を返す
eodays(yearmonth)
{

	stringleft,year,yearmonth,4
	stringmid,month,yearmonth,6,2
	month++
	
	stringlen,checks,month
	if(checks=1)
	month = 0%month%
	
	daysd = %year%%month%010000
	envadd,daysd,-1,day

	stringmid,daysd,daysd,7,2
	
	return,daysd
}

;--;pasteday(locate,clipnum)
pasteday(locate,clipnum)
{
	Send, {CTRLDOWN}g{CTRLUP}
WinWait, ジャンプ, 
IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
WinWaitActive, ジャンプ, 
	send,{vk1Dsc07B}
	Send, %locate%{ENTER}
WinWait, Microsoft Excel - monthly, 
IfWinNotActive, Microsoft Excel - monthly, , WinActivate, Microsoft Excel - monthly, 
WinWaitActive, Microsoft Excel - monthly, 

	clipboard=
	clipboard := clipboard%clipnum%
	clipwait,1
	Send, {CTRLDOWN}v{CTRLUP}
	sleep,100
}
