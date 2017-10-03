^b::
{

	wingettitle,dates,a
	stringmid,year,dates,27,4
  	stringmid,month,dates,32,2
	stringmid,day,dates,35,2
	
	
     clipboard_backup = %ClipboardAll%

     send,{vk1Dsc07B}
     send,^g

     sleep,200

     send,{vk1Dsc07B}
     send,h8:m8
     send,{enter}

     sleep,200

     send,^+{down}

     send,^c
     clipwait,1

     FileAppend , %clipboard%,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.txt

     Clipboard := clipboard_backup

Loop, 1000
{
;;終了 endtime
endtimeprocess:

	FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\temp.txt
, %a_index%
	if Errorlevel <> 0
	break
	stringright,temp,line,5
	stringleft,temp2,temp,1

	if(temp2=" ")
	{
	stringtrimleft,endtime,temp,1
	stringtrimright,line,line,6
	}

	else
	{
		endtime := temp
		stringtrimright,line,line,7
	}

;;開始start
startprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	もし、空白なら--:--をstartに格納する
	次の実績データをとるへ移動
*/

	if (temp3 = "`t")
	{
		start = --:--
		stringtrimright,line,line,2
		
		goto resultprocess
	}
		

	if(temp2=" ")
	{
	stringtrimleft,start,temp,1
	stringtrimright,line,line,7
	}
	else
	{
		start := temp
		stringtrimright,line,line,8
	}



;;実績データをとる
resultprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	もし、空白なら--:--をresultに格納する
	次の見積もりデータをとるへ移動
*/

	if (temp3 = " ")
	{
		result = ----
;;不確か
		stringtrimright,line,line,2
		goto predictprocess
	}
		

	if(temp2="`t")
	{
	stringtrimleft,result,temp,1
	stringtrimright,line,line,5
	}
	else
	{
		result := temp
		stringtrimright,line,line,6
	}

/*
	stringright,temp,line,5
	stringleft,temp2,temp,1

	if(temp2=" ")
	{
	stringtrimleft,start,temp,1
	stringtrimright,line,line,6
	}

	else
	{
		start := temp
		stringtrimright,line,line,7
	}
*/


;;見積もりデータをとる
predictprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	もし、空白なら----をpredictに格納する
	次のプロジェクトデータをとるへ移動
*/

	if (temp3 = "`t")
	{
		predict = ----
;;不確か
		stringtrimright,line,line,1
		goto projectprocess
	}
		

	if(temp2=" ")
	{
	stringtrimright,temp,temp,1
	stringtrimleft,predict,temp,1
	stringtrimright,line,line,5
	}
	else
	{
		stringtrimright,line,line,6
		predict := temp
		stringtrimright,predict,predict,1

	}

;;プロジェクトデータをとる
projectprocess:

	stringleft,temp,line,1

/*
	もし、空白なら----をpredictに格納する
	次のプロジェクトデータをとるへ移動
*/

	if (temp = "`t")
	{
		project = -
		stringtrimleft,temp,temp,1
;;不確か
;;		stringtrimright,line,line,2
		goto taskprocess
	}

	project := temp
	stringtrimleft,line,line,2

;;タスクデータをとる
taskprocess:

	task := line
	

;並び替えて出力

;次の行へ

endprocess:

	stringlen ,longth,endtime
	if(longth=4)
	{
		endtime = 0%endtime%
	}
	
	stringlen, longth,start
	if(longth=4)
	{
		start = 0%start%
	}

	strtemp = %year%-%month%-%day%,%start%,%endtime%,%result%,%predict%,%project%,%task%`n
	FileAppend , %strtemp%,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt

	
}
	filedelete , C:\Users\stroketip\Desktop\ショートカット\ahk\temp.txt
return
}