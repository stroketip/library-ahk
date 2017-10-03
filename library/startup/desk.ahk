sleep,35000
ifexist,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{
	run,C:\Program Files\EmEditor\EmEditor.exe C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	sleep,300000
	filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
}

return

