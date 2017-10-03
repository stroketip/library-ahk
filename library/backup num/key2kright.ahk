/*
WinGetPos , X, Y, Width, Height, a

	if(X = 950)
{
	winmove,a,,850,0,950,1035
	return
}

	if(x = 850)
{
	winmove,a,,750,0,950,1035
	return
}

	if(x = 750)
{
	winmove,a,,650,0,950,1035
	return
}

	if(x = 650)	
{
	winmove,a,,550,0,950,1035
	return
}

winmove,a,,950,0,950,1035

*/
{
	send,#s
	winwait,ASticky
	sleep,100
	send,{vk1Dsc07B}
	
	send,22:30

	send,^a
	
	send,^c
	flag =
	temp := clipboard
	temp2 = %clipboard%
	rtimeh := 0
	
	stringlen,len,temp
	if((len =4)or(len = 5))
	{
		stringgetpos,basho,temp,:
	
		stringleft,ltimeh,temp,basho
		stringtrimleft,ltimem,temp,basho+1
	
		if(a_hour > ltimeh)
		{
			ltimeh+=24
			flag=1
		}
		if(a_min > ltimem)
		{
			ltimem+=60
			ltimeh--
		}
		
		ltimeh-= a_hour
		ltimem-= a_min
		if(ltimem <10)
		ltimem=0%ltimem%
		
		if(flag = 1)
		{
			send,{left}
			send,次の日の
			send,{enter}
			send,{vk1Dsc07B}
			send,{space}
			send,^{right 3}

		}
		send,{vk1Dsc07B}
		send,{right}{space}まで{enter}
		send,{vk1Dsc07B}{space}

		send,%ltimeh%:%ltimem%
		
		Input, UserInput, V T5 L1
		if ErrorLevel = Max
		{
			if(userinput = "c")
			{
			send,{bs}
			send,^+{left 3}
			exitapp

			}
			if(userinput = "t")
			{
				send,{bs}
				send,^+{left 3}
				clipboard_backup = %ClipboardAll%
				clipboard=
				send,^c
				clipwait,1
				
				run,C:\Users\stroketip\Desktop\ショートカット\orzeszek-timer-1.6\Orzeszek Timer.exe,,,pid
				
				winwait,ahk_pid %pid%
				winactivate,ahk_pid %pid%

Sleep, 100
MouseClick, left,  137,  75,2
Sleep, 100

Send, {CTRLDOWN}av{CTRLUP}:00
sleep,50
send,{ENTER}
				
		}
		}
		exitapp
		return
	}
	
	stringgetpos,basho,temp,:

	stringleft,ltimeh,temp,basho
	stringtrimleft,temp,temp,basho+1
	
	stringleft,ltimem,temp,2
	stringtrimleft,temp,temp,2
	stringleft,pmkigou,temp,1
	stringtrimleft,temp,temp,1
	
	stringgetpos,basho,temp,:
	
	if(errorlevel = 1)
{
		rtimem := temp
		rtimeh := 0
	}
	
	stringleft,rtimeh,temp,basho
	stringtrimleft,temp,temp,basho+1
	
	rtimem := temp
	
	stringleft,nextk,rtimeh,1
	if(nextk = "+")
	{
		stringtrimleft,rtimeh,rtimeh,1
		rtimeh += 24
	}
	

;時間計算をする
;pmkigouが+なら足し算
;pmkigouが-なら引き算

	if(pmkigou = "+")
	{
		ltimem += rtimem
		if (ltimem >= 60)
		{
			ltimeh++
			ltimem -= 60
		}
		
		ltimeh += rtimeh
	}
	else
	{
		ltimem -= rtimem
		if (ltimem < 0)
		{
			ltimeh--
			ltimem += 60
		}
		ltimeh -= rtimeh
	}
	
	if(ltimeh<0)
	{
		ltimeh++
		ltimem:= ltimem*-1 + 60
	
		if(ltimeh=0)
		{
			ltimeh := "-0"
		}
	}
	send,^v
	send,{space}
	send,{=}
	send,{space}
	stringlen,basho,ltimem
	if(basho = 1)
	{
		ltimem = 0%ltimem%
	}
	send,%ltimeh%:%ltimem%

exitapp
	return
}
exitapp
return
