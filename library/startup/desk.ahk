sleep,95000
ifexist,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{
	run,C:\Program Files\EmEditor\EmEditor.exe C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	sleep,300000
	filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
}

ifexist,C:\Users\stroketip\Dropbox\IFTTT\dob\HIT STAMP.txt
{
	run,C:\Users\stroketip\Desktop\ショートカット\Chrome リモート デスクトップ.lnk
	sleep,1000
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\uwsc\共有ボタン.UWS
	
	filedelete,C:\Users\stroketip\Dropbox\IFTTT\dob\HIT STAMP.txt
	run,"C:\Users\stroketip\Desktop\ショートカット\DekaScreenKeyBoard_102\DekaScreenKeyBoard.exe"

}



return

