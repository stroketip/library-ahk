{

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
	
	
	run,C:\Users\stroketip\Desktop\ショートカット\smail-v4.17\smail -hsmtp.gmail.com -fuser -s"%checkt%" stroketip.1407331@toodledo.com -d,,Hide
	
	a++
	
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\splash\stroketip.ahk
	
	}
	
	return
}
exitapp
