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

     FileAppend , %clipboard%,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\temp.txt

     Clipboard := clipboard_backup

Loop, 1000
{
;;�I�� endtime
endtimeprocess:

	FileReadLine, line, C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\temp.txt
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

;;�J�nstart
startprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	�����A�󔒂Ȃ�--:--��start�Ɋi�[����
	���̎��уf�[�^���Ƃ�ֈړ�
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



;;���уf�[�^���Ƃ�
resultprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	�����A�󔒂Ȃ�--:--��result�Ɋi�[����
	���̌��ς���f�[�^���Ƃ�ֈړ�
*/

	if (temp3 = " ")
	{
		result = ----
;;�s�m��
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


;;���ς���f�[�^���Ƃ�
predictprocess:

	stringright,temp,line,5
	stringleft,temp2,temp,1

	stringright,temp3,temp,1
/*
	�����A�󔒂Ȃ�----��predict�Ɋi�[����
	���̃v���W�F�N�g�f�[�^���Ƃ�ֈړ�
*/

	if (temp3 = "`t")
	{
		predict = ----
;;�s�m��
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

;;�v���W�F�N�g�f�[�^���Ƃ�
projectprocess:

	stringleft,temp,line,1

/*
	�����A�󔒂Ȃ�----��predict�Ɋi�[����
	���̃v���W�F�N�g�f�[�^���Ƃ�ֈړ�
*/

	if (temp = "`t")
	{
		project = -
		stringtrimleft,temp,temp,1
;;�s�m��
;;		stringtrimright,line,line,2
		goto taskprocess
	}

	project := temp
	stringtrimleft,line,line,2

;;�^�X�N�f�[�^���Ƃ�
taskprocess:

	task := line
	

;���ёւ��ďo��

;���̍s��

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
	FileAppend , %strtemp%,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\tasklog.txt

	
}
	filedelete , C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\temp.txt
return
}