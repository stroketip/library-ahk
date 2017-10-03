clipboard_backup = %ClipboardAll%
clipboard=

	clipboard =
	send,^c
	clipwait,1
	
	
	temp := clipboard
	
	temp = %temp%`rendingcode
	
	stringsplit ,split,temp,`r
	
	a = 1
	
	loop 100
	{
	
	checkt := split%a%
	
	if (checkt = "endingcode")
	{
		return
	}
	
	if (checkt = "`n")
	{
		a++
		continue
	}
	
	
	run,C:\Users\stroketip\Desktop\ショートカット\smail-v4.17\smail -hsmtp.gmail.com -fuser -s"%checkt%" neumanzig.2357059@toodledo.com -d,,Hide
	
	a++
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\splash\neumantw.ahk
	}
	
	sleep,700
	Clipboard := clipboard_backup
	
	
	return
	