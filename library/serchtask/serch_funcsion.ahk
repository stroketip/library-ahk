
{
	
	totaltimeminute=0
	totaltimehour=0
	
	firstday = 2001-01-01
	lastday = 2099-01-01
	
	loopkaisuu=0
	loop,read,C:\Users\stroketip\Desktop\ショートカット\ahk\library\serchtask\serchtask.txt
	{
				if (a_loopreadline = "serchend.")
		{
			lastnumber = %loopkaisuu%
			
			kuriagari := totaltimeminute //60 
			
			totaltimehour := totaltimehour + kuriagari
			
			totaltimeminute := mod(totaltimeminute,60)
			

			if(totaltimeminute = 0)
			{
				totaltimeminute = 00
			}
			else
			{
				stringleft,totaltimeminute,totaltimeminute,2
			}
			
			totaltimehour := round(totaltimehour)
			totaltime = %totaltimehour%:%totaltimeminute%
			
			page := ceil(lastnumber / 8)
			thispage = 1
			
			averagetime := averagetime(totaltime,lastnumber)
			
			break
		}
		
		loopkaisuu++
		
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
		
		;guiに送る
		No%loopkaisuu% := loopkaisuu
		
		nitiji%loopkaisuu% := nitiji
		
		starttime%loopkaisuu% := starttime
		
		endtime%loopkaisuu% := endtime

		resulttime%loopkaisuu% := keisan(resulttime)
		
		predicttime%loopkaisuu% := predicttime
		
		kubunn%loopkaisuu% := kubunn
		
		task%loopkaisuu% := task
		

		firstday := firstsday(firstday,nitiji)
		
		lastday := lastday(lastday,nitiji)

		
		stringleft, timming,resulttime%loopkaisuu%,2
		stringright,temmping,resulttime%loopkaisuu%,2
		
		totaltimehour += timming
		totaltimeminute += temmping
		
		}
	
	#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\serchtask\output_display.ahk
	
	return
}


	

keisan(resulttime)
{
		temp := resulttime
		
		stringleft,jikann,temp,2
		
		stringright,funn,temp,2
		
		funn2 := funn * 60/100
		
		if (funn2<10)
		{
			funn2 = 0%funn2%
		}
		
		resulttime = %jikann%:%funn2%
		
		
		
		stringleft,resulttime,resulttime,5

		return,resulttime
}

totaltime(totalresulttime,resulttime)
{
	temp :=resulttime
	
	stringleft,jikann,temp,2
	stringright,funn,temp,2
		
	return
}

averagetime(totaltime,lastnumber)
{
	stringtrimright,jikan,totaltime,3
	stringright,funn,totaltime,2
	
	funn += jikan*60
	
	ave := funn / lastnumber
	
	jikan := floor(ave / 60)
	
	funn := round(mod(ave*100,60))
	

	
	averagetime = %jikan%:%funn%
	
	return,averagetime
}



firstsday(firstday,nitiji)
{
	stringleft,nenn,firstday,4
	stringleft,nenn2,nitiji,4

	if(nenn < nenn2)
	{
		return,nitiji
	}
	else
	{
		if(nenn > nenn2)
		{
		
			return,firstday
		}
	}
	
	stringtrimleft,temp1,firstday,5
	stringleft,gatu,temp1,2
	stringtrimleft,temp2,nitiji,5
	stringleft,gatu2,temp2,2

	if(gatu < gatu2)
	{
		return,nitiji
	}
	else
	{
		if(gatu > gatu2)
		{
			return,firstday
		}
	}

		stringtrimleft,temp1,temp1,3
		stringleft,niti,temp1,2
		stringtrimleft,temp2,temp2,3
		stringleft,niti2,temp2,2
		
	if(niti < niti2)
	{

		return,nitiji
	}
	else
	{
		return,firstday
	}
	return,firstday

}

lastday(lastday,nitiji)
{
	stringleft,nenn,lastday,4
	stringleft,nenn2,nitiji,4



	siki := nenn-nenn2
	if(siki =<0)
	{

	stringtrimleft,temp1,lastday,5
	stringleft,gatu,temp1,2
	stringtrimleft,temp2,nitiji,5
	stringleft,gatu2,temp2,2

	siki := gatu-gatu2
	if(siki < 0)

		{
			stringtrimleft,temp1,temp1,3
			stringleft,niti,temp1,2
			stringtrimleft,temp2,temp2,3
			stringleft,niti2,temp2,2

			siki := niti-niti2
			if(niti < 0)
			{
				return,lastday
			}
		}
	}	

	return,nitiji
}