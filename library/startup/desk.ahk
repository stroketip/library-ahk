sleep,95000
ifexist,C:\Users\stroketip\Dropbox\xls\t�^�X�N�V���[�g\txt\tasktxt.txt
{
	run,C:\Program Files\EmEditor\EmEditor.exe C:\Users\stroketip\Dropbox\xls\t�^�X�N�V���[�g\txt\tasktxt.txt
	sleep,300000
	filedelete,C:\Users\stroketip\Dropbox\xls\t�^�X�N�V���[�g\txt\tasktxt.txt
}

ifexist,C:\Users\stroketip\Dropbox\IFTTT\dob\HIT STAMP.txt
{
	run,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\Chrome �����[�g �f�X�N�g�b�v.lnk
	sleep,1000
	run,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\uwsc\���L�{�^��.UWS
	
	filedelete,C:\Users\stroketip\Dropbox\IFTTT\dob\HIT STAMP.txt
	run,"C:\Users\stroketip\Desktop\�V���[�g�J�b�g\DekaScreenKeyBoard_102\DekaScreenKeyBoard.exe"

}



return

