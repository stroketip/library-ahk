clipboard_backup = %ClipboardAll%
clipboard=


;-1��
a_mm1 = %a_mm% -1
a_mm1--
a_mm1 = 0%a_mm1%
stringright,a_mm1,a_mm1,2

if(a_mm1 = 00)
{
	yearmonth := a_yyyy-1
	a_mm1 = %yearmonth%12
}
else
{
a_mm1 = %A_YYYY%%a_mm1%
}


Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
	
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		
		run,%textb%
		return
	}

	
}

msgbox,�J�����_�[�����N�̃e�L�X�g�̒��ɁA�挎�̃����N������܂���ł����B