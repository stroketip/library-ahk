
SetTitleMatchMode, 2
#SingleInstance force

mouseclick,left
coordmode,tooltip,screen
tooltip, ahk,1915,1010
global scorex

run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\startup\desk.ahk

~}::

;onexit,exitsub goto 14902
return

;// タイトル画面でiをおすと、直接件名にカーソルを移動する。
;//
vkF2sc070::
{
	exitapp
	return
}

vk1Dsc07B::
{
;	a := ime_get()
;	msgbox,%a%
	send,{vk1Dsc07B}
	return
}
;:--  famst       ツール

;--;デスクトップ
;desktop

;#ifwinactive Program Manager
#ifwinactive ahk_class WorkerW
;#ifwinactive ahk_exe explorer.exe


#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\gifset\gifshot.ahk

<^+s::
{
	run,C:\Program Files (x86)\Fenrir Inc\FenrirFS\FenrirFS.exe
	return
}

<^!rbutton::
{

	sleep,20	
	clipboard_backup = %ClipboardAll%
	send,^c
	
	clipwait,10
	
	temp := clipboard
	clipboard =

	clipboard := temp
	
	
	
	filegetshortcut,%clipboard%,outfilename
	
	splitpath,outfilename,,dir
	
	if(dir = "")
	{
		clickpath()
		return
	
	}
	
	run,%dir%\
	
	Clipboard := clipboard_backup
	
	
	return
}

vk1Dsc07B & f::
{
	run,C:\Program Files (x86)\Everything\Everything.exe
	return
}


vk1Dsc07B & space::

{
	if (orchis ="desktop")
	{
		winactivate,ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
		sleep,100
		MouseGetPos, x0, y0
		
		MouseMove, 11,9,0
		MouseClick, left
		MouseMove, x0, y0
		orchis = 
		sleep,100
		mouseclick,left
		return
	}
	global orchis = "desktop"
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "desktop" -g 1123 930 -s
	return
}

^+u::
{
	run,C:\Users\stroketip\Desktop\ショートカット\uwsc48e\
	return
}

<^+e::

{
	run,C:\Users\stroketip\Pictures\Eye-Fi Photos\
	return
}

<^+w::
{
	run,C:\Users\stroketip\Dropbox\w仕事
	return
}

>^+e::
{
	run,C:\Users\stroketip\Dropbox\e-Mart
/*	
	run,http://ejje.weblio.jp/content/
	winwait,- 英和辞典 Weblio辞書 - Google Chrome
	sleep,700
	winactivate,a
	WinGetPos , X, Y, Width, Height, a
	
	width -= 1008
	width /= 2
	
	if (width < 0)
	width = 0
	
	width += 80
		
	MouseGetPos, x0, y0
	
	MouseMove, width,259
	MouseClick, left
	MouseMove, x0, y0
*/
	return
}
	

>^+a::
{
	run,C:\Users\stroketip\Desktop\ショートカット\amarecco310b\
	return
}


<^+o::
{
	run,C:\Users\stroketip\SkyDrive
	return
}

>^+o::
{
	run,C:\Users\stroketip\Desktop\ショートカット\orchis
	return
}

<^+t::
{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート
	return
}

<^+i::
{
	run,C:\Users\stroketip\Documents\CravingExplorer\download\mp3-itunes
	return
}

	
>^!x::
{
	run,C:\Program Files (x86)\XnView\xnview.exe
	return
}

;画像をahkで素早く呼び出す　設定をする

>^+v::
{
	run,C:\Users\stroketip\Videos\
	return
}


>+z::
{
	send,{blind}{shift up}
	send,^x
	
	clipwait,10
	
	temp2 := clipboard
	
	run,C:\Users\stroketip\Documents\my project
	winwait,C:\Users\stroketip\Documents\my project
	winactivate,C:\Users\stroketip\Documents\my project

	sleep,300
	send,{tab 4}
	
	send,^v
	
	send,#s
	sleep,200
	
	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\hyouji 2013-04-11.txt
	clipboard := temp
	
	send,^v
	sleep,200
	send,^w
	
	send,{up 2}
	send,{left 19}
	send,+{left 20}
	
	stringtrimleft,temp2,temp2,27
	send,{vk1Dsc07B}
	send,%temp2%
	
	inputflag = 1
	
	Clipboard := clipboard_backup

	return

}

>^+s::
{
	send,^x
	clipwait,10
	sleep,100
	
	run,C:\Users\stroketip\Desktop\ショートカット\
	winwait,C:\Users\stroketip\Desktop\ショートカット
	winactivate,C:\Users\stroketip\Desktop\ショートカット

	sleep,700
	send,{tab 4}
	
	send,^v
	
	return
	}

<^+rbutton::
{
	clickpath()
	return
}
^rbutton::
{
	pdfopen()
	return
}

vk1Dsc07B & rbutton::
{

	openclickpath()
	return

}

^+g::
{
	run,C:\Users\stroketip\Dropbox\アプリ\good reader\
	return
}

^+w::
{
	run,C:\Users\stroketip\Dropbox\w仕事\
	return
}

^#!w::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\Dropbox\w仕事\
	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
}

;
>^+m::
{
	run,C:\Users\stroketip\Documents\マイ マップ\Mago研究所.mmap
	return
}
;

>^+k::
{
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\
	return
}

rctrl & f::
{
	run,C:\Program Files (x86)\Everything\Everything.exe
	return
}
	

>^+d::
{

	run,C:\Users\stroketip\Downloads\
	return
}

<^+d::
{
	run,C:\Users\stroketip\Documents\
	return

}

>^+i::
{
	run,C:\Users\stroketip\Pictures\icon\
	return
}

^#!i::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\Pictures\icon\

	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
	}


^#!k::
{
;	send,^x
;	clipwait,10
	
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\

;	sleep,500
;	send,{tab 4}
	
;	send,^v
	
	return
	}
	

^+s::
^+a::
{
	run,C:\Users\stroketip\Dropbox\
	return
}

/*
>^+r::
{

	run,C:\Users\stroketip\FenrirFS Storage\個人用.profile\files\
	return
}
*/
/*
<^+r::
{
	run,C:\Users\stroketip\Dropbox\xls\rレビュー\
	return
}
*/

#^+r::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\FenrirFS Storage\個人用.profile\files\
	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
}

<^numpadins::

{
	dayfolderopen(0)
	return
}

<^numpadend::

{
	dayfolderopen(-1)
	return
}

<^numpaddown::

{
	dayfolderopen(-2)
	return
}
<^numpadpgdn::

{
	dayfolderopen(-3)
	return
return
}

<^numpadleft::
{
	dayfolderopen(-4)
	return
}

<^numpadclear::
{
	dayfolderopen(-5)
	return
}

<^numpadright::
{
	dayfolderopen(-6)
	return
}

<^numpadhome::
{
	dayfolderopen(-7)
	return
}

<^numpadup::
{
	dayfolderopen(-8)
	return
}

<^numpadpgup::
{
	dayfolderopen(-9)
	return
}

<^+numpadadd::
{
	run,"C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\dayfolderopeninput.ahk"
	return
}

<^+p::
{
	run,C:\Users\stroketip\Pictures\
	return
}

>^+p::
{
	run,C:\Python27\Scripts
	return
}

<^+m::
{
	run,C:\Users\stroketip\Music\
	return
}

^#!m::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\Music\
	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
}

^+z::
{
	run,C:\Users\stroketip\Documents\my project\
	return
}
^#!z::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\Documents\my project\
	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
}

^+x::

{
	run,C:\Users\stroketip\Dropbox\xls\
	return
}

^#!x::
{
	send,^x
	clipwait,10
	
	run,C:\Users\stroketip\Dropbox\xls\
	sleep,500
	send,{tab 4}
	
	send,^v
	
	return
}

^+t::
{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\
	return
}

>^appskey::
{
	ctrlappskeyopen()
	return
}
appskey::
{
	appskeyopen()
	return
}

!appskey::
{
	altappskeyopen()
	return
}

>+^appskey::
>+appskey::
{
	shiftappskeyopen()
	return
}


<^!#e::
{
	filecopy C:\Users\stroketip\Desktop\ショートカット\Evernote.lnk,C:\Users\stroketip\Desktop\
	return
}

<^!#l::
{
	filecopy C:\ProgramData\Microsoft\Windows\Start Menu\Programs\JUST PDF 3\JUST PDF 3 [作成].lnk,C:\Users\stroketip\Desktop\
	return
}

f1::
{

	taskchutetoday()
	return
}


+f1::
{
	taskchutenextday()
 return

}



^f1::

{
	day := a_dd-1
		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2

		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2

	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

;--;秀丸ファイラーclassic
#ifwinactive ahk_class HmFilerClassic23047123488

<^!rbutton::
{

	sleep,20	
	clipboard_backup = %ClipboardAll%
	send,^c
	
	clipwait,10
	
	temp := clipboard
	clipboard =

	clipboard := temp
	
	
	
	filegetshortcut,%clipboard%,outfilename
	
	splitpath,outfilename,,dir
	
	if(dir = "")
	{
		clickpath()
		return
	
	}
	
	run,%dir%\
	
	Clipboard := clipboard_backup
	
	
	return
}

<^+numpadadd::
{
	run,"C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\dayfolderopeninput.ahk"
	return
}

<^numpadins::

{
	dayfolderopen(0)
	return
}

<^numpadend::

{
	dayfolderopen(-1)
	return
}

<^numpaddown::

{
	dayfolderopen(-2)
	return
}
<^numpadpgdn::

{
	dayfolderopen(-3)
	return
return
}

<^numpadleft::
{
	dayfolderopen(-4)
	return
}

<^numpadclear::
{
	dayfolderopen(-5)
	return
}

<^numpadright::
{
	dayfolderopen(-6)
	return
}

<^numpadhome::
{
	dayfolderopen(-7)
	return
}

<^numpadup::
{
	dayfolderopen(-8)
	return
}

<^numpadpgup::
{
	dayfolderopen(-9)
	return
}


vk1Dsc07B & f::
{
; 秀丸ファイラが開いている現在のフォルダをEverythingで検索 
	temp :=
	controlgettext,temp,Edit1,a
	run,C:\Program Files\Everything\Everything.exe -path %temp%
	
	return
}

~vk1Dsc07B & space::
{
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "秀丸ファイラ" -g 1123 930 -s
	return
}

<^+e::
{
	run,C:\Users\stroketip\Pictures\Eye-Fi\%a_year%-%a_mm%-%a_dd%\
	return
}


<^+rbutton::
{
	clickpath()
	return
}

^rbutton::
{
	pdfopen()
	return
}

vk1Dsc07B & rbutton::
{

	openclickpath()
	return
}

^!rButton::
{
doublecheck:
;	click,left
	sleep,20	
	clipboard_backup = %ClipboardAll%
	send,^c
	
	clipwait,10
	
	temp := clipboard
	clipboard =

	clipboard := temp
	
	
	
	filegetshortcut,%clipboard%,outfilename
	
	splitpath,outfilename,,dir
	
	if(dir = "")
	{
		clickpath()
	
	}
	
	run,%dir%\
	
	Clipboard := clipboard_backup
	
	
	return
}

^numpad1::
{
	send,{blind}
	sleep,150
	send,!vd
	return
}

^numpad2::
{
	send,{blind}
	send,!vn
	return
}
^numpad3::
{
	send,{blind}
	send,!vs
	return
}
^numpad4::
{
	send,{blind}
	send,!vh
	return
}
^numpad5::
{
	send,{blind}
	send,!vl
	return
}


>^appskey::
{
	ctrlappskeyopen()
	return
}
!appskey::
{
	altappskeyopen()
	return
}

appskey::
{
	appskeyopen()
	return
}

>+appskey::
{
	shiftappskeyopen()
	return
}
	

;--;デフォルト-------------------------
#ifwinactive

/*

*/

/*
:*:,,desktop.::
{
	send,{vk1Dsc07B}
	send,c:\Users\stroketip\Desktop\
	return
}
*/

#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\imageclick.ahk

:*:,,kyou::
{
	
clipboard_backup = %ClipboardAll%
clipboard=

;今日の日の値を出力する


a_mm1 = %A_YYYY%`/%a_mon%`/%a_mday%

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\library\todaynumber\todaynumber.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,10

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,11
		textb := round(textb)

		send,%textb%
		return
	}
}

msgbox,リンクのテキストの中に、今日のデータがありませんでした。
return
}

/* f23は全角・半角ボタン */
/* f20はcapslockボタン */


f23 & 0::
{
run,evernote:///view/2489958/s23/31b7ade4-3e90-4b85-afd1-a1f6d329d722/31b7ade4-3e90-4b85-afd1-a1f6d329d722/
	return
}

f23 & 7::
{
	run,evernote:///view/2489958/s23/90c3f6b6-4d77-4176-b246-4e99c5d36c7e/90c3f6b6-4d77-4176-b246-4e99c5d36c7e/
	return
	}

f20 & a::
{
	send,{home}
	return
}

f20 & s::
{
	send,{end}
	return
}

<+f20::
{
	SetCapsLockState ,ON
	
	return
}

>+f20::
{
	SetCapsLockState ,OFF
	
	return
}

PrintScreen::
{
Errorlevel =

process, exist,Cocodori.exe

if(Errorlevel <> 0)
{
send,^{printscreen}
return
}

run,C:\Program Files (x86)\KING JIM\Cocodori\Cocodori.exe

return
}

#q::
{
	run,"C:\Users\stroketip\Desktop\ショートカット\afxw64_156\AFXW.EXE"
	return
}


:*:,.pas::
{
	send,^a
	send,{del}
	send,^d
	sleep,50
	run,"C:\Program Files (x86)\1Password\1Password.exe"
	
	
	winwait, - 1Password
	sleep,200
	send,spdh3h{enter}
	return
}

/*
~h & ~vk1Dsc07B up::
{
	send,{vk1Csc079}
;	send,{blind}{vk1Dsc07B up}
	return
}

~l & ~vk1Dsc07B up::
{
	send,{vk1Csc079}
;	send,{blind}{vk1Dsc07B up}
	return
}
*/

/*
vk1Csc079 & p::
{
	run,C:\Program Files (x86)\Pushbullet\pushbullet.exe
	return
}

vk1Dsc07B & p::
{
	run,C:\Program Files (x86)\Pushbullet\pushbullet.exe
	return
}
*/
/*
//------ 三点ショット

vk1Dsc07B & p::
{
    If GetKeyState("vk1Csc079", "P")
        run,C:\Program Files (x86)\Pushbullet\pushbullet.exe
    Return
}
*/
^+xbutton2::
{
	run,C:\Program Files (x86)\Panasonic\YomikakuV15\Yomikaku.exe
	return
}

^+xbutton1::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	clipwait,10
	
	send,^c
	clipwait,10
	
	
	WinWait, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ 
	winactivate,ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ
	sleep,800
	MouseGetPos, x0, y0
	MouseClick, left,  181,  62
	Sleep, 100

	MouseMove, x0, y0

	return	
	
}


:*:,.8a::
{
	kouzashot("Windows 8～導入編～")
	return
}
:*:,.EK::
{
	kouzashot("Excel2010～基礎編～")
	return
}

:*:,.EL::
{
	kouzashot("Excel2010～実践編～")
	return
}

:*:,.EM::
{
	kouzashot("Excel2010～活用編～")
	return
}
	
:*:,.EN::
{
	kouzashot("Excel2013～入門編～")
	return
}
	
:*:,.EO::
{
	kouzashot("Excel2013～基本編～")
	return
}
	
:*:,.EP::
{
	kouzashot("Excel2013～実践編～")
	return
}

:*:,.FS::
{
	kouzashot("筆まめver23")
	return
}
	
:*:,.GA::
{
	kouzashot("iPad講座")
	return
}
	
:*:,.GB::
{
	kouzashot("IPhone～iOS 7～講座")
	return
}
	
:*:,.GC::
{
	kouzashot("iTunes11講座")
	return
}
	
:*:,.GD::
{
	kouzashot("iPad～i0S7～")
	return
}
	
:*:,.HA::
{
	kouzashot("ホームページビルダー")
	return
}
	

:*:,.HH::
{
	kouzashot("ホームベーシｰビルダー16")
	return
}
	
:*:,.HI::
{
	kouzashot("Jimdo講座")
	return
}

:*:,.IJ::
{
	kouzashot("インターネット(Intemet Explorer 11)講座～入門編～")
	return
}

:*:,.IK::
{
	kouzashot("インターネット(Intemet Explorer 11)講座～基本編～")
	return
}

:*:,.IL::
{
	kouzashot("インターネット(Intemet Explorer 11)講座～活用編～")
	return
}
	
:*:,.8B::
{
	kouzashot("Windows8～基礎編～")
	return
	}
	
:*:,.8C::
{
	kouzashot("Windows8～文字入力編～")
	return
	}
	
:*:,.8D::
{
	kouzashot("Windows8～アプリ編～")
	return
	}
	
:*:,.8E::
{
	kouzashot("Windows8～導入編～講座")
	return
	}
	
:*:,.8F::
{
	kouzashot("Windows8～アプリ編～講座")
	return
	}
	
:*:,.AI::
{
	kouzashot("PowerPoint2010基礎")
	return
	}
	
:*:,.AJ::
{
	kouzashot("PowerPoint2010応用")
	return
	}
	
:*:,.AK::
{
	kouzashot("Access2010基礎編")
	return
	}
	
:*:,.AL::
{
	kouzashot("Access2010応用編")
	return
	}
	
:*:,.AM::
{
	kouzashot("PowerPoint2013基礎編")
	return
	}
	
:*:,.AN::
{
	kouzashot("PowerPoint2013応用編")
	return
	}
	

:*:,.IR::
{
	kouzashot("Google講座")
	return
	}
	
:*:,.LG::
{
	kouzashot("Word2010/Excel2010課題集")
	return
	}
	
:*:,.LH::
{
	kouzashot("Word2013課題集")
	return
	}
	
:*:,.LI::
{
	kouzashot("Exce12013課題集")
	return
	}
	
:*:,.MS::
{
	kouzashot("MOS Word2010 講座")
	return
	}
	
:*:,.MT::
{
	kouzashot("MOS Excel2010 講座")
	return
	}
	
:*:,.MU::
{
	kouzashot("MOS PowerPoint2010 講座")
	return
	}
	
:*:,.MV::
{
	kouzashot("MOS Access2010 講座")
	return
	}
	
:*:,.MW::
{
	kouzashot("MOS Word 2010 Expert講座")
	return
	}

:*:,.MX::
{
	kouzashot("MOS Excel2010 Expert講座")
	return
	}
	
:*:,.NA::
{
	kouzashot("iPad～アプリ編～講座")
	return
	}
	
:*:,.NB::
{
	kouzashot("IPhone～アプリ編～講座")
	return
	}
:*:,.OH::
{
	kouzashot("電子メール WindowsLiveメール 2011")
	return
	}
:*:,.TK::
{
	kouzashot("確認テスト")
	return
}


:*:,.TM::
{
	kouzashot("マンツーマン講座")
	return
	}
	
	
:*:,.TS::
{
	kouzashot("セルフ講座")
	return
	}
	
:*:,.TX::
{
	kouzashot("その他講座")
	return
	}
	
:*:,.TY::
{
	kouzashot("MOS試験 2010")
	return
	}
	
:*:,.TZ::
{
	kouzashot("MOS模擬試験 2010")
	return
	}
	
:*:,.VB::
{
	kouzashot("入室説明会:説明会(入校)")
	return
	}
	
:*:,.VC::
{
	kouzashot("会場入室説明会:入室説明会演習")
	return
	}
	
:*:,.VD::
{
	kouzashot("開校説明会:説明会(開校)")
	return
	}
	
:*:,.VX::
{
	kouzashot("パソコン基礎講座")
	return
	}
:*:,.WM::
{
	kouzashot("Word2010～入門編～")
	return
	}
	
:*:,.WN::
{
	kouzashot("Word2010～基本編～")
	return
	}
	
:*:,.WO::
{
	kouzashot("Word2010～実践編～")
	return
}
:*:,.WP::
{
	kouzashot("Word2013～入門編～")
	return
	}

:*:,.WQ::
{
	kouzashot("Word2013～基本編～")
	return
	}
	
:*:,.WR::
{
	kouzashot("Word2013～実践編～")
	return
	}

:*:,.XO::
{
	kouzashot("Windows7～基礎編～")
	return
}

:*:,.XQ::
{
	kouzashot("Windows7～基礎編～")
	return
}

:*:,.XR::
{
	kouzashot("Windows7～文字入力編～")
	return
}

:*:,.XS::
{
	kouzashot("Windows7～活用編～")
	return
}

:*:,.XT::
{
	kouzashot("Windows7～デジカメ編～")
	return
	}
	
:*:,.XU::
{
	kouzashot("Windows7～デジカメ応用編～")
	return
	}

:*:,.MAA::
{
	kouzashot("Powerpoint2013")
	return
}	


/*
^+!/::
{
	run,C:\Program Files (x86)\ATLAS V14\Atlas.exe
	

	
	WinWait, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ 
	sleep,800
	MouseGetPos, x0, y0
	MouseClick, left,  181,  62
	Sleep, 100

	MouseMove, x0, y0
	return
}
*/

:*:,,ima::

{
	

	stringmid,temp,a_now,9,4
	stringleft,templeft,temp,2
	stringright,tempright,temp,2
	
	send, %templeft%:%tempright%
/*
	sleep,30	
	clipwait,10
	
	send,^v
*/	
	temp=
	tempright=
	templeft=
	
	Clipboard := clipboard_backup
	
	
	return
	
}

#s::
{

	send,^+!#0
	return
}

>^+r::
{

	wingetpos,x,y,,,a
	if x= 470
	{
		winmove,a,, 1973, 100 ,924 ,654
		return
	}
	
	winmove,a,, 470, 189 ,924 ,654
return



}

vk1Dsc07B & z::
{
	send,{left}
	return
}


vk1Dsc07B & v::
{
	send,{right}
	return
}

vk1Dsc07B & x::
{
	send,{down}
	return
}

vk1Dsc07B & c::
{
	send,{up}
	return
}

vk1Dsc07B & b::
{
	send,{vk1Csc079}
	return
}

vk1Dsc07B & o::
{
	run,\Users\stroketip\Desktop\ショートカット\afxw64_156\AFXW.EXE
	return
}


^+!space::
{
	send,{blind}{ctrl up}
	send,{blind}{shift up}
	send,{blind}{alt up}
	send,{blind}{vk1Dsc07B up}
	send,{blind}{vk1Csc079 up}
	return
}


~lbutton & rbutton::
{

	if(A_PriorHotkey <> "Xbutton1")
	{
	
		send,{lbutton up}
		sleep,1
		send,^c
		send,{blind}{ctrl up}
	}
	else
		{
		send,{esc}
		}
	return
}

mbutton::
{
	winset,topmost,toggle,a
	return
}

vk1Dsc07B & wheelup::
{
	
	if (a_thishotkey = A_PriorHotkey)
	{
		translate += 20
	}
	else
	{
		translate =170
	}
	winset,Transparent,%translate%,a
	return
}

vk1Dsc07B & wheeldown::
{

	if (a_thishotkey = a_priorhotkey)
	{
		translate -= 20
	}
	else
	{
		translate =150
	}
	winset,Transparent,%translate%,a
	return
}


lbutton & xbutton1::
{
	send,{blind}{lbutton up}

	send,^v

	send,{blind}{ctrl up}
	return
}
/*
lbutton & xbutton1 up::
{
	send,{lbutton up}
	send,^v
	send,{ctrl up}
	return
}
*/


~lbutton & xbutton2::
{
	send,{blind}{lbutton up}
	send,^c
	send,^+{f4}
	send,{blind}{ctrl up}
	
	return
}

lbutton & mbutton::
{
	clipboard =
	send,^c
	clipwait,10
	
	run,C:\Users\stroketip\Desktop\ショートカット\52-program\cb_transrator-auto_JP.hta
	
	return
}

/*
mbutton::
{
	send,{blind}{lbutton up}
	send,{enter}
	
	return
}
*/

>+^q::
{

	clipboard =
	send,^c
	clipwait,10
	
	
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
	
	return
}

>^q::
{

	clipboard =
	send,^c
	clipwait,10
	
	
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



~mbutton & rbutton::
{
	send,^+!#e
	return
}


:*:,,bx::
{
	send,×
	send,{enter}
	send,{vk1Dsc07B}
	return
}

:*:,,waru::
{
	send,÷
	send,{enter}
	send,{vk1Dsc07B}
	return
}

vk1Dsc07B & numpad1::
{
	

	clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 1
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}

vk1Dsc07B & numpad2::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 2
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}

vk1Dsc07B & numpad3::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 3
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad4::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 4
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad5::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 5
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad6::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 6
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad7::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 7
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad8::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 8
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}
vk1Dsc07B & numpad9::
{
		clipboard_backup = %ClipboardAll%
	clipboard=
	FileReadLine, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt, 9
	clipboard := temp
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	return
}

/*
vk1Dsc07B & NumpadAdd::
{
	MouseGetPos, MouseX, MouseY
	counter += 1
	ToolTip , %counter%, ,, 12
	return
}

vk1Dsc07B & NumpadSub::
{
	MouseGetPos, MouseX, MouseY
	counter -= 1
	ToolTip , %counter%, ,, 12
	return
}
vk1Dsc07B & NumpadMult::
{
	MouseGetPos, MouseX, MouseY
	ToolTip , %counter%, ,, 12
	sleep,100
	tooltip,,,,12
	return
}
*/

vk1Dsc07B & NumpadEnter::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard := counter
	clipwait,10
	
	send,^v
	Clipboard := clipboard_backup
	return
}

vk1Dsc07B & space::
{
	send,{blind}{vk1Dsc07B up}
	send,{vk1Dsc07B}
	send,{space}
	
	send,{vk1Dsc07B down}
	
	
	send,{vk1Csc079}
	return
	
}

vk1Csc079 & space::
{
	send,{blind}{vk1Csc079 up}
	send,{vk1Csc079}
	send,{space}
	
	send,{vk1Csc079 down}
	
	send,{vk1Dsc07B}
	return
}


vk1Dsc07B & xbutton1::
{
	send,{blind}{vk1Csc079 up}
	clipboard_backup = %ClipboardAll%
	send,{ctrl down}
	send,a
	send,c
	send,{ctrl up}

	temp := clipboard

	FoundPos := RegExMatch(temp, "evernote:///")
	
	stringtrimleft,temp,temp,foundpos-1
	
	stringreplace,temp,temp,^r
	stringreplace,temp,temp,^n
	
	run,%temp%
	
	send,{blind}{xbutton1 up}
	send,{blind}{vk1Dsc07B up}
	

return
}

^xbutton1::
{
	clipboard =
	send,^c
	clipwait,10
	
	run,C:\Users\stroketip\Desktop\ショートカット\52-program\cb_transrator-auto_JP.hta
	
	return
}


~vk1Csc079 & lbutton::
{
	send,^a
	send,^c
	clipwait,10
	
	send,^a
	return
}


vk1Dsc07B & lbutton::
{
	mouseclick,left
	send,{home}
	send,+{end}
	send,^c

	clipwait,10
	
	send,{home}
	send,+{end}
	
	return
}

vk1Dsc07B & rbutton::


{
	send,^a
	send,^c
	clipwait,10
	
	send,^a
	return
}

/*
#a::
{
	send,^+{f4}
	return
}
*/

XButton1::
{
			if(a_priorhotkey = "lbutton & xbutton1")
			{
				send,{lbutton up}
				;	send,{enter}
				
				send,{blind}{ctrl up}
				return
			}
			
	send,+#{printscreen}
	send,{ctrl down}
	send,{blind}{ctrl up}
	return
}

XButton2::
{
	send,{blind}{xbutton2 up}
	send,#^+!s
;	send,^t
	return
}

XButton2 up::
{
	send,{blind}{ctrl up}
	return
}


!ins::
{
ifwinexist ATOK Pad
{
	winactivate,ATOK Pad
	sleep,500
	send,^n
}
else
{
	run,C:\Program Files (x86)\JustSystems\ATOK\PAD\ATOKPAD.EXE
	winwait ATOK Pad
	winactivate,ATOK Pad
	send,{alt 2}
	sleep,500
	send,^n
}

return
}

>^e::
>^+e::
{
	send,^c
	sleep,50
	
	run,C:\Program Files (x86)\ATLAS V14\Atlas.exe
	


sleep,500
WinWait, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ, 
IfWinNotActive, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ, , WinActivate, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ, 
WinWaitActive, ATLAS ﾒｲﾝｳｨﾝﾄﾞｳ, 
sleep,300
MouseClick, left,  196,  61
MouseClick, left,  196,  61

return
}

>^esc::
{
	num1s = 
	num2s = 
	num3s = 
	num4s = 
	num5s = 
	num6s = 
	num7s = 
	num8s = 
	num9s = 
	num10s = 
	gui,1:destroy
	
	gui,2:destroy
	gui,3:destroy
	gui,4:destroy
	gui,5:destroy
	gui,6:destroy
	gui,7:destroy
	gui,8:destroy
	gui,9:destroy
	gui,10:destroy
	return
}


>^numpad1::
clipstock1:
{

if (num1s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		;画像なら
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg
		sleep,50
		numclipall1 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 1:-Border

		Gui, 1:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 1:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 1:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 1.bmp
		Gui, 1:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 1:Show, x1922 y913 h143 w346, numclip1
		num1s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
		}
	else
	{
		;テキストなら
		numclip1 := clipboard
		numclipall1 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
		Gui, 1:-Border

		Gui, 1:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 1:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 1:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 1.bmp
		Gui, 1:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip1%


		Gui, 1:Show, x1922 y913 h143 w346, numclip1
		num1s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall1
	clipwait,10
	send,^v
/*
	gui,1:destroy

	num1s = 
*/	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadEnd::
{

numpad1reshow:

if (num1s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg
		numclipall1 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 1:-Border

		Gui, 1:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 1:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 1:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 1.bmp
		Gui, 1:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 1:Show, x1922 y913 h143 w346, numclip1
	num1s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	
	clipboard_backup = %ClipboardAll%


	numclip1 := clipboard
	numclipall1 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 1:-Border

	Gui, 1:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 1:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 1:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 1.bmp
	Gui, 1:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip1%


	Gui, 1:Show, x1922 y913 h143 w346, numclip1
	num1s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,1:destroy
	num1s = 
	goto,numpad1reshow
	return
}
}

>^numpad2::
clipstock2:
{

if (num2s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp2.jpg
		numclipall2 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 2:-Border

		Gui, 2:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 2:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 2:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 2.bmp
		Gui, 2:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp2.jpg

		Gui, 2:Show, x2288 y913 h143 w346, numclip2
		num2s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip2 := clipboard
	numclipall2 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 2:-Border

	Gui, 2:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 2:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 2:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 2.bmp
	Gui, 2:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip2%


	Gui, 2:Show, x2288 y913 h143 w346, numclip2
	num2s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall2
	clipwait,10
	send,^v
/*
	gui,2:destroy

	num2s = 
*/	
	Clipboard := clipboard_backup
	
	return
}

}
>^Numpaddown::
{

numpad2reshow:

if (num2s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp2.jpg
		numclipall2 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 2:-Border

		Gui, 2:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 2:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 2:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 2.bmp
		Gui, 2:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp2.jpg

		Gui, 2:Show, x2288 y913 h143 w346, numclip2
		num2s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	
	
	clipboard_backup = %ClipboardAll%


	numclip2 := clipboard
	numclipall2 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 2:-Border

	Gui, 2:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 2:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 2:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 2.bmp
	Gui, 2:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip2%


	Gui, 2:Show, x2288 y913 h143 w346, numclip2
	num2s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,2:destroy
	num2s = 
	goto,numpad2reshow
	return
}
}

>^numpad3::
clipstock3:
{

if (num3s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp3.jpg
		numclipall3 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 3:-Border

		Gui, 3:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 3:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 3:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 3.bmp
		Gui, 3:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 3:Show, x2655 y913 h143 w346, numclip3
		num3s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip3 := clipboard
	numclipall3 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 3:-Border

	Gui, 3:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 3:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 3:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 3.bmp
	Gui, 3:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip3%


	Gui, 3:Show, x2655 y913 h143 w346, numclip3
	num3s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall3
	clipwait,10
	send,^v
/*
	gui,3:destroy

	num3s = 
*/	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadPgDn::
{

numpad3reshow:

if (num3s <> "1")
{
clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp3.jpg
		numclipall3 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 3:-Border

		Gui, 3:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 3:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 3:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 3.bmp
		Gui, 3:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp3.jpg

		Gui, 3:Show, x2655 y913 h143 w346, numclip3
		num3s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
		
	
	clipboard =
	send,^c
	clipwait,10
	clipboard_backup = %ClipboardAll%


	numclip3 := clipboard
	numclipall3 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 3:-Border

	Gui, 3:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 3:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 3:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 3.bmp
	Gui, 3:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip3%


	Gui, 3:Show, x2655 y913 h143 w346, numclip3
	num3s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,3:destroy
	num3s = 
	goto,numpad3reshow
	return
}
}

>^numpad4::
clipstock4:
{

if (num4s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp4.jpg
		numclipall4 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 4:-Border

		Gui, 4:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 4:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 4:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 4.bmp
		Gui, 4:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 4:Show, x1922 y1063 h143 w346, numclip4
		num4s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip4 := clipboard
	numclipall4 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 4:-Border

	Gui, 4:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 4:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 4:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 4.bmp
	Gui, 4:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip4%


	Gui, 4:Show, x1922 y1063 h143 w346 ,numclip4
	num4s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall4
	clipwait,10
	send,^v
/*
	gui,4:destroy

	num4s = 
*/
	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadLeft::
{

numpad4reshow:

if (num4s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp4.jpg
		numclipall4 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 4:-Border

		Gui, 4:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 4:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 4:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 4.bmp
		Gui, 4:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp4.jpg

		Gui, 4:Show, x1922 y1063 h143 w346 ,numclip4
		num4s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	
	clipboard_backup = %ClipboardAll%


	numclip4 := clipboard
	numclipall4 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 4:-Border

	Gui, 4:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 4:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 4:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 4.bmp
	Gui, 4:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip4%


	Gui, 4:Show, x1922 y1063 h143 w346,numclip4
	num4s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,4:destroy
	num4s = 
	goto,numpad4reshow
	return
}
}

>^numpad5::
clipstock5:
{

if (num5s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp5.jpg
		numclipall5 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 5:-Border

		Gui, 5:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 5:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 5:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 5.bmp
		Gui, 5:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 5:Show, x2288 y1063 h143 w346, numclip5
		num5s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip5 := clipboard
	numclipall5 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 5:-Border

	Gui, 5:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 5:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 5:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 5.bmp
	Gui, 5:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip5%


	Gui, 5:Show, x2288 y1063 h143 w346 ,numclip5
	num5s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall5
	clipwait,10
	send,^v
/*
	gui,5:destroy

	num5s = 
*/
	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadClear::
{

numpad5reshow:

if (num5s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp5.jpg
		numclipall5 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 5:-Border

		Gui, 5:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 5:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 5:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 5.bmp
		Gui, 5:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp5.jpg

		Gui, 5:Show, x2288 y1063 h143 w346 ,numclip5
		num5s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	clipboard_backup = %ClipboardAll%


	numclip5 := clipboard
	numclipall5 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 5:-Border

	Gui, 5:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 5:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 5:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 5.bmp
	Gui, 5:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip5%


	Gui, 5:Show, x2288 y1063 h143 w346,numclip5
	num5s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,5:destroy
	num5s = 
	goto,numpad5reshow
	return
}
}

>^numpad6::
clipstock6:
{
if (num6s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp6.jpg
		numclipall6 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 6:-Border

		Gui, 6:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 6:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 6:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 6.bmp
		Gui, 6:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 6:Show, x2655 y1063 h143 w346, numclip6
		num6s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip6 := clipboard
	numclipall6 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 6:-Border

	Gui, 6:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 6:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 6:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 6.bmp
	Gui, 6:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip6%


	Gui, 6:Show, x2655 y1063 h143 w346, numclip6
	num6s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall6
	clipwait,10
	send,^v
/*
	gui,6:destroy

	num6s = 
*/
	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadRight::
{

numpad6reshow:

if (num6s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp6.jpg
		numclipall6 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 6:-Border

		Gui, 6:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 6:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 6:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 6.bmp
		Gui, 6:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp6.jpg

		Gui, 6:Show, x2655 y1063 h143 w346 , numclip6
		num6s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	
	clipboard_backup = %ClipboardAll%


	numclip6 := clipboard
	numclipall6 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 6:-Border

	Gui, 6:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 6:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 6:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 6.bmp
	Gui, 6:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip6%


	Gui, 6:Show, x2655 y1063 h143 w346, numclip6
	num6s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,6:destroy
	num6s = 
	goto,numpad6reshow
	return
}
}

>^numpad7::
clipstock7:
{

if (num7s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp7.jpg
		numclipall7 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 7:-Border

		Gui, 7:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 7:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 7:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 7.bmp
		Gui, 7:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 7:Show, x1922 y1213 h143 w346, numclip7
		num7s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip7 := clipboard
	numclipall7 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 7:-Border

	Gui, 7:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 7:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 7:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 7.bmp
	Gui, 7:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip7%


	Gui, 7:Show, x1922 y1213 h143 w346 ,numclip7
	num7s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall7
	clipwait,10
	send,^v
/*
	gui,7:destroy

	num7s = 
*/
	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadHome::
{

numpad7reshow:

if (num7s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp7.jpg
		numclipall7 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 7:-Border

		Gui, 7:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 7:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 7:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 7.bmp
		Gui, 7:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp7.jpg

		Gui, 7:Show, x1922 y1213 h143 w346, numclip7
		num7s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	clipboard =
	send,^c
	clipwait,10
	clipboard_backup = %ClipboardAll%


	numclip7 := clipboard
	numclipall7 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 7:-Border

	Gui, 7:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 7:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 7:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 7.bmp
	Gui, 7:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip7%


	Gui, 7:Show, x1922 y1213 h143 w346, numclip7
	num7s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,7:destroy
	num7s = 
	goto,numpad7reshow
	return
}
}

>^numpad8::
clipstock8:
{

if (num8s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp8.jpg
		numclipall8 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 8:-Border

		Gui, 8:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 8:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 8:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 8.bmp
		Gui, 8:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 8:Show, x2288 y1213 h143 w346, numclip8
		num8s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip8 := clipboard
	numclipall8 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 8:-Border

	Gui, 8:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 8:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 8:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 8.bmp
	Gui, 8:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip8%


	Gui, 8:Show, x2288 y1213 h143 w346, numclip8
	num8s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall8
	clipwait,10
	send,^v
/*
	gui,8:destroy

	num8s = 
*/
	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadUp::
{

numpad8reshow:

if (num8s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp8.jpg
		numclipall8 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 8:-Border

		Gui, 8:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 8:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 8:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 8.bmp
		Gui, 8:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp8.jpg

		Gui, 8:Show, x2288 y1213 h143 w346, numclip8
		num8s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10

	clipboard_backup = %ClipboardAll%


	numclip8 := clipboard
	numclipall8 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 8:-Border

	Gui, 8:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 8:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 8:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 8.bmp
	Gui, 8:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip8%


	Gui, 8:Show, x2288 y1213 h143 w346, numclip8
	num8s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,8:destroy
	num8s = 
	goto,numpad8reshow
	return
}
}

>^numpad9::
clipstock9:
{

if (num9s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp9.jpg
		numclipall9 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 9:-Border

		Gui, 9:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 9:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 9:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 9.bmp
		Gui, 9:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp.jpg

		Gui, 9:Show, x2655 y1213 h143 w346, numclip9
		num9s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip9 := clipboard
	numclipall9 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 9:-Border

	Gui, 9:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 9:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 9:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 9.bmp
	Gui, 9:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip9%


	Gui, 9:Show, x2655 y1213 h143 w346, numclip9
	num9s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall9
	clipwait,10
	send,^v
/*
	gui,9:destroy

	num9s = 
*/	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadPgUp::
{

numpad9reshow:

if (num9s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp9.jpg
		numclipall9 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 9:-Border

		Gui, 9:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 9:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 9:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 9.bmp
		Gui, 9:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp9.jpg

		Gui, 9:Show, x2655 y1213 h143 w346, numclip9
		num9s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
		
	clipboard =
	send,^c
	clipwait,10
	
	clipboard_backup = %ClipboardAll%


	numclip9 := clipboard
	numclipall9 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 9:-Border

	Gui, 9:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 9:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 9:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 9.bmp
	Gui, 9:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip9%


	Gui, 9:Show, x2655 y1213 h143 w346, numclip9
	num9s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,9:destroy
	num9s = 
	goto,numpad9reshow
	return
}
}

>^numpad0::
clipstock0:
{

if (num10s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
		stringlen,temp,clipboard
	if(temp=10)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp10.jpg
		numclipall10 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 10:-Border

		Gui, 10:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 10:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 10:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 0.bmp
		Gui, 10:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp10.jpg

		Gui, 10:Show, x2655 y763 h143 w346, numclip0
		num10s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	numclip10 := clipboard
	numclipall10 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 10:-Border

	Gui, 10:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 10:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 10:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 0.bmp
	Gui, 10:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip10%


	Gui, 10:Show, x2655 y763 h143 w346, numclip0
	num10s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
}
else
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard := numclipall10
	clipwait,10
	send,^v
/*
	gui,10:destroy

	num10s = 
*/	
	Clipboard := clipboard_backup
	
	return
}

}
>^NumpadIns::
{

numpad10reshow:

if (num10s <> "1")
{
	clipboard_backup = %ClipboardAll%
	stringlen,temp,clipboard
	if(temp=0)
		{
		run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\temp10.jpg
		numclipall10 = %clipboardall%
		WinGet, title, ID, a

		soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	
		sleep,550
		Gui, 10:-Border

		Gui, 10:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
		Gui, 10:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
		Gui, 10:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 0.bmp
		Gui, 10:Add, picture, x56 y20 w260 h90 ,C:\Users\stroketip\Desktop\ショートカット\ahk\temp10.jpg

		Gui, 10:Show, x2655 y763 h143 w346, numclip10
		num10s = 1
		Clipboard := clipboard_backup
		winactivate,ahk_id %title%
		return
	}
	else
	{
	
	clipboard =
	send,^c
	clipwait,10
	
	clipboard_backup = %ClipboardAll%


	numclip10 := clipboard
	numclipall10 = %clipboardall%
		WinGet, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 10:-Border

	Gui, 10:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 10:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 10:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 0.bmp
	Gui, 10:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip0%


	Gui, 10:Show, x2655 y763 h143 w346, numclip10
	num10s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
	}
	
Return

}
else
{
	gui,10:destroy
	num10s = 
	goto,numpad10reshow
	return
}
}

/*

>^numpad2::
{

if (num2s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip2 := clipboard
	numclipall2 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 2:-Border
	
	Gui, 2:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 2:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 2:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 2.bmp
	Gui, 2:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip2%
	
	
	Gui, 2:Show, x2288 y913 h143 w346, gui number2
	num2s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall2
	clipwait,10
	send,^v
	gui ,2:Destroy
	
	num2s =
	
	
	return
}
}

>^numpad3::
{

if (num3s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip3 := clipboard
	numclipall3 = %clipboardall%
	winget,title, ID, a

soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
Gui, 3:-Border

Gui, 3:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
Gui, 3:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
Gui, 3:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 3.bmp
Gui, 3:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip3%


	Gui, 3:show, x2655 y913 h143 w346, numclip3
num3s = 1
	clipboard := clipboard_backup
	winactivate,ahk_id %title%
Return
}
else
{
	clipboard := numclipall3
	clipwait,10
	send,^v
	gui ,3:Destroy
	
	num3s =
	
	
	return
}
}


>^numpad4::
{

if (num4s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip4 := clipboard
	numclipall4 = %clipboardall%
	

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 4:-Border
	
	Gui, 4:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 4:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 4:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 4.bmp
	Gui, 4:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip4%
	
	
	Gui, 4:Show, x1922 y1063 h143 w346, gui number4
	num4s = 1
		clipboard := clipboard_backup
		winactivate,ahk_id %title%
	Return
}
else
{
	clipboard := numclipall4
	clipwait,10
	send,^v
	gui ,4:Destroy
	
	num4s =
	
	
	return
}
}	

>^numpad5::
{

if (num5s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip5 := clipboard
	numclipall5 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 5:-Border
	
	Gui, 5:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 5:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 5:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 5.bmp
	Gui, 5:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip5%
	
	
	Gui, 5:Show, x2288 y1063 h143 w346, gui number5
	num5s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall5
	clipwait,10
	send,^v
	gui,5:destroy
	
	num5s =
	
	return
}
}

>^numpad6::
{


if (num6s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10
	
	numclip6 := clipboard
	numclipall6 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 6:-Border
	
	Gui, 6:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 6:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 6:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 6.bmp
	Gui, 6:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip6%
	
	
	Gui, 6:Show, x2655 y1063 h143 w346, gui number6
	num6s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall6
	clipwait,10
	send,^v
	gui,6:destroy
	
	num6s =
	
	return
}
}

>^numpad7::
{

if (num7s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip7 := clipboard
	numclipall7 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 7:-Border
	
	Gui, 7:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 7:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 7:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 7.bmp
	Gui, 7:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip7%
	
	
	Gui, 7:Show, x1922 y1213 h143 w346, gui number7
	num7s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall7
	clipwait,10
	send,^v
	gui,7:destroy
	
	num7s =
	
	return
}
}

>^numpad8::
{

if (num8s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip8 := clipboard
	numclipall8 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 8:-Border
	
	Gui, 8:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 8:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 8:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 8.bmp
	Gui, 8:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip8%
	
	
	Gui, 8:Show, x2288 y1213 h143 w346, gui number8
	num8s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall8
	clipwait,10
	send,^v
	gui,8:destroy
	
	num8s =
	
	return
}
}

>^numpad9::
{

if (num9s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip9 := clipboard
	numclipall9 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 9:-Border
	
	Gui, 9:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 9:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 9:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 9.bmp
	Gui, 9:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip9%
	
	
	Gui, 9:Show, x2655 y1213 h143 w346, gui number9
	num9s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall9
	clipwait,10
	send,^v
	gui,9:destroy
	
	num9s =
	
	return
}
}

>^numpad0::
{

if (num10s <> "1")
{
	clipboard_backup = %ClipboardAll%

	send,^c
	clipwait,10

	numclip10 := clipboard
	numclipall10 = %clipboardall%
	Winget, title, ID, a

	soundplay, C:\Users\stroketip\Music\sound\textexpander.mp3
	Gui, 10:-Border
	
	Gui, 10:Add, GroupBox, x22 y70 w50 h-20 , GroupBox
	Gui, 10:Add, Picture, x2 y0 w337 h137 , C:\Users\stroketip\Pictures\icon\number\waku.bmp
	Gui, 10:Add, Picture, x16 y14 w40 h40 , C:\Users\stroketip\Pictures\icon\number\blue number 0.bmp
	Gui, 10:Add, Text, x56 y20 w260 h90 +Uppercase, %numclip10%
	
	
	Gui, 10:Show, x2655 y763 h143 w346, gui number10
	num10s = 1
	Clipboard := clipboard_backup
	winactivate,ahk_id %title%
	Return
}
	else
{
	clipboard := numclipall1
	clipwait,10
	send,^v
	gui,10:destroy
	
	num10s =
	
	return
}
}

GuiClose:
ExitApp

*/

>^+n::
{
	run,"C:\Users\stroketip\Desktop\ショートカット\osciroi0463\osciroi.exe"
	return
}


>^NumpadAdd::
{

	if (numb="")
	{
		numb = 1
	}
	numb++
		
	ToolTip , %numb%, ,, 2

		
	return
}

>^NumpadSub::
{
	if(numb="")
	{
		numb = 0
	}
	numb--
	ToolTip , %numb%, ,, 2
	
	
	return
}

>^=::
>^numpadenter::
numprint:
{
	send,{vk1Dsc07B}
	send,%numb%
	ToolTip, ,,,2
	return
}


>^r::
{
	send,{home}
	send,^+{end}

	return
}

>^d::

{
	clipboard_backup = %ClipboardAll%
	
	winget active,,a
	
	clipboard =
	send,^c
	clipwait,10
	temp =
	temp := clipboard

	

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	WinWait, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
IfWinNotActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
	}
	sleep,100
	
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	send,{vk1Dsc07B}
	send,i100
	send,{enter}
	sleep,200
	
	send,^{up}
	send,{down}
	
	clipboard := temp
	clipwait,10
	sleep,50
	
	send,^v
	send,+{tab}
	send,.
	

	send,{tab 5}
	

	send,^:
	send,{enter}
	
	sleep,150
	send,^{up}
	
	
;	Clipboard := clipboard_backup
	
	return
}
	

>^+z::
{
	ifwinexist,D-SendMail
	{
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	else
	{
		run,C:\Users\stroketip\Desktop\ショートカット\D-SendMail_117 (1)\D-SendMail.exe
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	
	send,{tab 8}
	sleep,50
	send,^v
	sleep,50
	winactivate,D-SendMail
	send,{tab}
	send,^v
	sleep,30
	send,{tab}
	clipboard_backup = %ClipboardAll%
	
	return
}
	

>^t::
{
	clipboard_backup = %ClipboardAll%
	
	winget active,,a
	
	send,^c
	clipwait,10
	


	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	
	WinWait, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
IfWinNotActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
	
	}
	winwait,タスクシュート　%a_year%-%a_mm%-%a_dd%
	sleep,100
	
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	send,{vk1Dsc07B}
	send,i100
	send,{enter}
	sleep,200
	
	send,^{up}
	send,{down}
	send,^v
	send,{enter}
	
	send,^{up 2}
	send,{down}
	send,{up}
	send,^{down}
	
	return
	
}
	

^!LButton::
{
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%, RGB
; # を先頭に付けるなら下の行のコメントを取る
;    StringReplace, color, color, 0x, #
; # を先頭に付けるなら下の行にコメントを付ける
	StringReplace, color, color, 0x
	clipboard = %color%
	ToolTip, %color%,,,2
	Sleep, 1500
	ToolTip,,,,2
	return
}

vk1Csc079 & .::
vk1Csc079 & \ up::
{
	clipboard_backup = %ClipboardAll%
	
	send,^a
	send,^c
	run,C:\Users\stroketip\Desktop\ショートカット\D-SendMail_117(+omnifocus\D-SendMail.exe
	winwait,D-SendMail
	winactivate,D-SendMail
	
	MouseGetPos, x0, y0
	
		MouseMove, 77,165
		MouseClick, left
		send,{vk1Dsc07B}
		send,--
		
		send,{tab}
		
		send,^v
		clipboard_backup = %ClipboardAll%
		
		MouseMove, x0, y0
		
		return
	}
	
#f12::
{
	send,#s
	winwait,ASticky
	winactivate,a
	send,^v
	return
}



~z & h::
~z & j::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=←
	clipwait,1
	sleep,100
	send,{bs}
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


:*:zxh::
:*:zxj::
{
	a=←
	wordshoot(a)
	a=
	return
    return
}


/* 
~z & y::
{
	send,{bs}
	send,{vk1Dsc07B}
	send,↖
	return
}
*/

:*:,,zy::
:*:zxu::
:*:zxy::
{
	a=↖
	wordshoot(a)
	a=
	return
}
/*
~z & k::
{
	send,{bs}
	send,{vk1Dsc07B}
	send,↑
	return
}
*/
:*:zxk::
{
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=○
	clipwait,1
	sleep,100
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}

}


:*:,,zi::
:*:zxi::
{
	a=↑
	wordshoot(a)
	a=
	return
}


:*:,,zo::
:*:zxo::
{
	a=↗
	wordshoot(a)
	a=
	return
}

:*:,,zp::
:*:zxp::
{
	a=↗
	wordshoot(a)
	a=
	return
}

~z & @::
{
	send,{bs}
	a=↗
	wordshoot(a)
	a=
	return
}

~z & l::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=→
	clipwait,1
	sleep,100
	send,{bs}
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}

:*:zxl::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=→
	clipwait,1
	sleep,100
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


~z & .::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=↘
	clipwait,1
	sleep,100
	send,{bs}
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


:*:zx.::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=↘
	clipwait,1
	sleep,100
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
		Clipboard := clipboard_backup
    }
    else
    {
    	send,^v
    	sleep,100
    	Clipboard := clipboard_backup
    }
    return
}

~z & ,::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=↓
	clipwait,1
	sleep,100
	send,{bs}
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
		Clipboard := clipboard_backup
    }
    else
    {
    	send,^v
    	sleep,100
    	Clipboard := clipboard_backup
    }
    return
}

:*:zx,::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=↓
	clipwait,1
	sleep,100
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


:*:,,zn::
:*:zxn::
:*:zxm::
{
	send,{vk1Dsc07B}
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	clipboard=↙
	clipwait,1
	sleep,100
	send,^v
	
	send,{left}
	send,{bs}
	send,{right}
	
	Clipboard := clipboard_backup
	return
}
; ~z & n
~z & m::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=↙
	clipwait,1
	sleep,100
	send,{bs}
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


vk1Dsc07B & left::
{
	send,!+{left}
	return
}

vk1Dsc07B & right::
{
	send,!+{right}
	return
	
}

~q & h::
{
	clipboard_backup = %ClipboardAll%
	


	send,{bs}
	send,{home}
	send,+{right}
	send,^c
	clipwait,1
	tmp := clipboard
	
	if(tmp = "□")
	{
		clipboard_backup = %ClipboardAll%
		send,{left}
		return
	}
	if(tmp = "☑")
	{
		clipboard_backup = %ClipboardAll%

	a=□
	wordshoot(a)
	a=
		return
	}
	
	send,{left}
	a=□
	wordshoot(a)
	a=
	Clipboard := clipboard_backup
	return
}

~q & j::
~q & k::
{
	clipboard_backup = %ClipboardAll%
	
	send,{bs}
	send,{home}
	send,+{right}
	send,^c
	clipwait,10
	tmp := clipboard
	
	if(tmp = "☑")
	{
		clipboard_backup = %ClipboardAll%
		send,{left}
		return
	}
	if(tmp = "□")
	{
		clipboard_backup = %ClipboardAll%
		send,{bs}
			a=☑
		wordshoot(a)
		a=
		return
	}
		send,{home}
		a=☑
		wordshoot(a)
		a=

	Clipboard := clipboard_backup
	return
}

/*
~q & l::
{
	clipboard_backup = %ClipboardAll%
	
	send,{bs}
	send,{home}
	send,+{right}
	send,^c
	clipwait,10
	tmp := clipboard
	
	if(tmp = "☑")
	{
		clipboard_backup = %ClipboardAll%
		send,{bs}
		return
	}
	if(tmp = "□")
	{
		clipboard_backup = %ClipboardAll%
		send,{bs}
		return
	}
	send,{left}
	return
}
*/
~q & `;::
{
	clipboard_backup = %ClipboardAll%
	
	send,{bs}
	send,{home}
	send,+{right}
	send,^c
	clipwait,10
	tmp := clipboard
	
	if(tmp = "☑")
	{
		clipboard_backup = %ClipboardAll%
		send,{bs}
		a=□
		wordshoot(a)
		a=
		return
	}
	if(tmp = "□")
	{
		clipboard_backup = %ClipboardAll%
		send,{bs}
		a=☑
		wordshoot(a)
		a=
		return
	}
	send,{left}
	return
}

vk1Dsc07B & e::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	FileRead, tmpclip, C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt		
	send,{home}+{end}
	send,^x
	clipwait,10
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt

	tmpclip = %clipboard%`n%tmpclip%

	FileAppend , %tmpclip%, C:\Users\stroketip\Desktop\ショートカット\ahk\tmpclip.txt
	send,{blind}{shift up}
	Clipboard := clipboard_backup
	
	send,{blind}{vk1Dsc07B up}
	return
}


^!numpadins::
{
	
clipboard_backup = %ClipboardAll%
clipboard=

;今月のノートを開く

a_mm1 = 0%a_mm%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%%a_mm1%

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		run,%textb%
		sleep,100
		
Send, {CTRLDOWN}{END}{CTRLUP}{CTRLDOWN}v{CTRLUP}

		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、今月のリンクがありませんでした。
return
}


^!numpaddown::
{
	run,C:\Users\stroketip\Desktop\ショートカット\Jane Style\Jane2ch.exe
	return
}

^!#/::
{
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\thismonth.ahk
	return
}


~f & j::

{
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	FileReadLine, clipboard, C:\Users\stroketip\Desktop\ショートカット\ahk\環境依存文字2013-02-07.txt, 1

	clipwait,1
	sleep,100
	send,{bs}
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}

	return
}


;;変換
vk1Csc079 & i:: send,{up}

vk1Csc079 & k:: send,k

vk1Csc079 & h:: send,{f6}

;vk1Csc079 & j:: send,!{tab}

;vk1Csc079 & l:: send,+!{tab}

vk1Csc079 & j:: send,{left}

vk1Csc079 & l:: send,{right}

vk1Csc079 & b:: send,{bs}
;vk1Csc079 & s:: send,{bs}
;vk1Csc079 & d:: send,{del}


vk1Csc079 & u:: send,{pgup}

vk1Csc079 & n:: send,{pgdn}

vk1Csc079 & @:: send,{esc}


vk1Csc079 & z::
vk1Csc079 & x::
{
	send,{home}{bs}
	return
}

vk1Csc079 & 9::
{
	send,{vk1Dsc07B}
	send,9:00
	return
}

vk1Csc079 & 8::
{
	send,{vk1Dsc07B}
	send,8:00
	return
}

vk1Csc079 & 7::
{
	send,{vk1Dsc07B}
	send,7:00
	return
}

vk1Csc079 & 6::
{
	send,{vk1Dsc07B}
	send,6:00
	return
}

vk1Csc079 & 5::
{
	send,{vk1Dsc07B}
	send,5:00
	return
}

vk1Csc079 & 4::
{
	send,{vk1Dsc07B}
	send,4:00
	return
}

vk1Csc079 & 3::
{
	send,{vk1Dsc07B}
	send,3:00
	return
}

vk1Csc079 & 2::
{
	send,{vk1Dsc07B}
	send,2:00
	return
}

vk1Csc079 & 1::
{
	send,{vk1Dsc07B}
	send,1:00
	return
}

vk1Csc079 & 0::
{
	send,{vk1Dsc07B}
	send,10:00
	return
}

;;無変換

vk1Dsc07B & 1::
{
	send,{vk1Dsc07B}
	send,11:00
	return
}

vk1Dsc07B & 2::
{
	send,{vk1Dsc07B}
	send,12:00
	return
}

vk1Dsc07B & 3::
{
	send,{vk1Dsc07B}
	send,13:00
	return
}

vk1Dsc07B & 4::
{
	send,{vk1Dsc07B}
	send,14:00
	return
}

vk1Dsc07B & 5::
{
	send,{vk1Dsc07B}
	send,15:00
	return
}

vk1Dsc07B & 6::
{
	send,{vk1Dsc07B}
	send,16:00
	return
}

vk1Dsc07B & 7::
{
	send,{vk1Dsc07B}
	send,17:00
	return
}

vk1Dsc07B & 8::
{
	send,{vk1Dsc07B}
	send,18:00
	return
}

vk1Dsc07B & 9::
{
	send,{vk1Dsc07B}
	send,19:00
	return
}

vk1Dsc07B & 0::
{
	send,{vk1Dsc07B}
	send,20:00
	return
}



vk1Dsc07B & a up::
{
	send,{home}
	send,{del}
	return
}
vk1Dsc07B & i:: send,{up}

vk1Dsc07B & m:: send,{down}

vk1Dsc07B & ,:: send,{f7}

vk1Dsc07B & .::
{
	 send,{f9}
	 sleep,5
	 send,{f8}
	 return
}

vk1Dsc07B & /:: send,{f9}

vk1Dsc07B & s::
{
	send,{bs}
 	return
}

vk1Dsc07B & w:: send,{esc}

vk1Dsc07B & h::
{
 send,{home}
return
}
/* 1.5秒以内に無変換キーから先に離したら
　　変換キーを押す

Input, UserInput, V T1.5 L1
if ErrorLevel = Max
{
	MsgBox, You entered "%UserInputs%"
	return
}
*/


vk1Dsc07B & `;::
{
	send,{home}
	send,+{end}
	return
}
	

vk1Dsc07B & l:: send,{end}

vk1Dsc07B & @::
{
	run,C:\Users\stroketip\Desktop\ショートカット\clpn334c\clipnote2.exe
	return
}

vk1Dsc07B & q:: send,!{f4}

vk1Dsc07B & u:: send,{pgup}

vk1Dsc07B & y:: send,{pgup}

vk1Dsc07B & n:: send,{pgdn}

vk1Dsc07B & j::	send,{left}

vk1Dsc07B & k::	send,{right}

vk1Dsc07B & d:: send,{del}

;;vk1Dsc07B & o:: 
/*
vk1Dsc07B & c::
{
	send,{home}
	send,+{end}
	send,^c
	return
}
*/
/*
vk1Dsc07B & z::
vk1Dsc07B & x::
{
	send,{home}{bs}
	return
}
*/

vk1Dsc07B & TAB::

;tilemove
{
    WinGet, activeWindowID, ID, A
    WinGetPos, x, y, w, h, ahk_id %activeWindowID%
    SysGet, monitorCount, MonitorCount
    Loop, %monitorCount%
    {
        SysGet, m, MonitorWorkArea, %a_index%
        if (mLeft <= x && x <= mRight && mTop <= y && y <= mBottom)
        {
            WinGetClass, activeWindowClass, ahk_id %activeWindowID%
            WinGet, id, list, ahk_class %activeWindowClass%
            Loop, %id%
            {
                w := (mRight - mLeft) / 2
                h := (id > 2) ? (mBottom - mTop) / 2 : mBottom - mTop
                x := (Mod(a_index, 2) == 1) ? mLeft : mLeft + w
                y := (a_index <= 2) ? mTop : mTop + h
 
                StringTrimRight, this_id, id%a_index%, 0
                WinActivate, ahk_id %this_id%
                WinWaitActive, ahk_id %this_id%
                WinMove, ahk_id %this_id%,,%x%, %y%, %w%, %h%
            }
            break
        }
    }
return
}


:*:zxcv::

{
	send,{vk1Dsc07B}
	send,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　
	send,{vk1Dsc07B}
	
	return
}

:*:;k0-::
:*:;k-::
:*:;kg;::

{

	clipboard_backup = %ClipboardAll%
	clipboard=

	clipboard=%a_year%年 %a_mm%月

	clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
}

:*:;k1-::
:*:;s0-::
:*:;s-::
:*:,,s-::
:*:,,sengetu.::
:*:;sg;::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	sengetu:= a_mm
	sengetu--
	
	if(sengetu=0)
	{
		sakunen:= a_year
		sakunen--
		clipboard=%sakunen%年 %sengetu%月
		clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
	
	}
	clipboard=%a_year%年 %sengetu%月

	clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
}


:*:,,raigetu.::
:*:;r-::
:*:,,r-::
:*:;r0-::
:*:,,r0-::
:*:;r+::
:*:;raigetu.::
:*:;rg;::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	raigetu:= a_mm
	raigetu++
	
	if(raigetu=13)
	{
		rainen:= a_year
		rainen++
		raigeu-=12
		clipboard=%rainen%年 %raigetu%月
		clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
	
	}
	clipboard=%a_year%年 %raigetu%月

	clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
}



:*:;sr+::
:*:;saraigetu.::
:*:;2r+::
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	raigetu:= a_mm
	raigetu++
	raigetu++
	
	if(raigetu="13" or raigetu="14")
	{
		rainen:= a_year
		rainen++
		raigetu-=12
		clipboard=%rainen%年 %raigetu%月
		clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup
	return
	}
	
	clipboard=%a_year%年 %raigetu%月

	clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
}


:*:;sr;::
;再来月 xxxx-xx;
{

	clipboard_backup = %ClipboardAll%
	clipboard=

	raigetu:= a_mm
	raigetu++
	raigetu++
	
	if(raigetu="13" or raigetu="14")
	{
		rainen:= a_year
		rainen++
		raigetu-=12
		
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2
		
		clipboard=%rainen%-%raigetu%
		
		
		
		clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup
	return
	}

	raigetu = 0%raigetu%
	stringright,raigetu,raigetu,2

	clipboard=%a_year%-%raigetu%

	clipwait,1
	sleep,100
	send,^v

	Clipboard := clipboard_backup

	return
}


/*
もし、前に実行したホットストリングが;numnum-なら、--をスラッシュに書き換える
プログラムを時間があるときに書いてみる

*/
:*:;0-::
:*:,,today::
{
	send, %A_year%-%a_mm%-%a_dd%
	return
}

:*:;k;::
;今月 xxxx-xx;
{
clipboard_backup = %ClipboardAll%
clipboard=


;+1月
a_mm1 = 0%a_mm%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%-%a_mm1%


send,{vk1Dsc07B}
sleep,100
send,%a_mm1%

sleep,100
Clipboard := clipboard_backup

return
}

:*:;0g::
{
	tukikeisan(0)
	return
}

:*:;-1g;::
:*:;1k-;
:*:sg.::
:*:;-1m;::
:*:;-1g::
:*:;-1k;::
:*:,,-1g::
:*:,,-1m::
:*:,,-1k::

{
	tukikeisan(-1)
	return
}
:*:;-2g::
:*:;2g-;::
:*:;-2k;::
:*:;2k-;::
:*:;ssg;::
:*:;s2-;::
:*:;2m-::
:*:;-2m;::

{
	tukikeisan(-2)
	return
}
:*:;-3g::
:*:;3g-;::
:*:;-3k;::
:*:;3k-;::
:*:;sssg;::
:*:;s3-;::
:*:;3m-::
:*:;-3m;::
{
	tukikeisan(-3)
	return
}
:*:;-4g::
:*:;4g-;::
:*:;-4k;::
:*:;4k-;::
:*:;s4-;::
:*:;4m-::
:*:;-4m;::
{
	tukikeisan(-4)
	return
}
:*:;-5g::
:*:;5g-;::
:*:;-5k;::
:*:;5k-;::
:*:;s5-;::
:*:;5m-::
:*:;52m;::
{
	tukikeisan(-5)
	return
}
:*:;-6g::
:*:;6g-;::
:*:;-6k;::
:*:;6k-;::
:*:;6m-::
:*:;-6m;::
{
	tukikeisan(-6)
	return
}
:*:;-7g::
:*:;7g-;::
:*:;-7k;::
:*:;7k-;::
:*:;7m-::
:*:;-7m;::
{
	tukikeisan(-7)
	return
}
:*:;-8g::
:*:;8g-;::
:*:;-8k;::
:*:;8k-;::
:*:;8m-::
:*:;-8m;::

{
	tukikeisan(-8)
	return
}
:*:;-9g::
:*:;9g-;::
:*:;-9k;::
:*:;9k-;::
:*:;9m-::
:*:;-9m;::

{
	tukikeisan(-9)
	return
}
:*:;-10g::
:*:;10g-;::
:*:;-10k;::
:*:;10k-;::
:*:;10m-::
:*:;-10m;::

{
	tukikeisan(-10)
	return
}
:*:;-11g::
:*:;11g-;::
:*:;-11k;::
:*:;11k-;::
:*:;11m-::
:*:;-11m;::

{
	tukikeisan(-11)
	return
}
:*:;-12g::
:*:;12g-;::
:*:;-12k;::
:*:;12k-;::
:*:;12m-::
:*:;-12m;::

{
	tukikeisan(-12)
	return
}

:*:;1g;::
:*:;1g;::
:*:;1k;::
:*:;1k;::
:*:;1m;::

{
	tukikeisan(1)
	return
}
:*:;2g;::
:*:;2g;::
:*:;2k;::
:*:;2k;::
:*:;rrg;::
:*:;2m;::


{
	tukikeisan(2)
	return
}

:*:;3g;::
:*:;rrrg;::
:*:;3k;::
:*:;3m;::


{
	tukikeisan(3)
	return
}
:*:;4k;::
:*:;4g;::
:*:;4m;::


{
	tukikeisan(4)
	return
}
:*:;5k;::
:*:;5g;::
:*:;5m;::
{
	tukikeisan(5)
	return
}
:*:;6k;::
:*:;6g;::
:*:;6m;::

{
	tukikeisan(6)
	return
}
:*:;7k;::
:*:;7g;::
:*:;7m;::


{
	tukikeisan(7)
	return
}
:*:;8k;::
:*:;8g;::
:*:;8m;::


{
	tukikeisan(8)
	return
}
:*:;9k;::
:*:;9g;::
:*:;9m;::


{
	tukikeisan(9)
	return
}
:*:;10k;::
:*:;10g;::
:*:;10m;::


{
	tukikeisan(10)
	return
}
:*:;11k;::
:*:;11g;::
:*:;11m;::


{
	tukikeisan(11)
	return
}
:*:;12k;::
:*:;12g;::
:*:;12m;::


{
	tukikeisan(12)
	return
}

/*
:*:;kg;::
{
	tukikeisan(0)
	return
}
*/



:*:;s;::
;先月 xxxx-xx;
{
;-1月
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
a_mm1 = %A_YYYY%-%a_mm1%
}

send,{vk1Dsc07B}
sleep,100
send,%a_mm1%

sleep,100
Clipboard := clipboard_backup

return
}


:*:;r;::
;来月 xxxx-xx;
{
clipboard_backup = %ClipboardAll%
clipboard=


;+1月
a_mm1 = %a_mm% +1
a_mm1++
a_mm1 = 0%a_mm1%
stringright,a_mm1,a_mm1,2

if(a_mm1=13)
{
	a_mm1-=12
	ayear:= a_yyyy
	ayear++
	a_mm1 = %ayear%01
}
else
{
a_mm1 = %A_YYYY%-%a_mm1%
}

send,{vk1Dsc07B}
sleep,100
send,%a_mm1%

sleep,100
Clipboard := clipboard_backup

return
}

:*:;1-::
	{
	dateadd_out(-1)
	return
	}

:*:;2-::
	{
	dateadd_out(-2)
	return
	}

:*:;3-::
	{
	dateadd_out(-3)
	return
	}

:*:;4-::
	{
	dateadd_out(-4)
	return
	}
:*:;5-::
	{
	dateadd_out(-5)
	return
	}
:*:;6-::
	{
	dateadd_out(-6)
	return
	}
:*:;7-::
	{
	dateadd_out(-7)
	return
	}
:*:;8-::
	{
	dateadd_out(-8)
	return
	}
:*:;9-::
	{
	dateadd_out(-9)
	return
	}
:*:;10-::
	{
	dateadd_out(-10)
	return
	}
:*:;11-::
	{
	dateadd_out(-11)
	return
	}

:*:;12-::
	{
	dateadd_out(-12)
	return
	}
:*:;13-::
	{
	dateadd_out(-13)
	return
	}
:*:;14-::
	{
	dateadd_out(-14)
	return
	}
:*:;15-::
	{
	dateadd_out(-15)
	return
	}
:*:;16-::
	{
	dateadd_out(-16)
	return
	}
:*:;17-::
	{
	dateadd_out(-17)
	return
	}
:*:;18-::
	{
	dateadd_out(-18)
	return
	}
:*:;19-::
	{
	dateadd_out(-19)
	return
	}
:*:;20-::
	{
	dateadd_out(-20)
	return
	}
:*:;21-::
	{
	dateadd_out(-21)
	return
	}
:*:;22-::
	{
	dateadd_out(-22)
	return
	}
:*:;23-::
	{
	dateadd_out(-23)
	return
	}
:*:;24-::
	{
	dateadd_out(-24)
	return
	}
:*:;25-::
	{
	dateadd_out(-25)
	return
	}
:*:;26-::
	{
	dateadd_out(-26)
	return
	}
:*:;27-::
	{
	dateadd_out(-27)
	return
	}
:*:;28-::
	{
	dateadd_out(-28)
	return
	}
:*:;29-::
	{
	dateadd_out(-29)
	return
	}
:*:;30-::
	{
	dateadd_out(-30)
	return
	}
:*:;31-::
	{
	dateadd_out(-31)
	return
	}

:*:;0;::
:*:;0+::

{
	day := a_dd
	send, %A_year%-%a_mm%-%day%
	return
}
:*:;1;::
:*:;1+::
	{
	dateadd_out(1)
	return
	}
:*:;2;::
:*:;2+::
	{
	dateadd_out(2)
	return
	}
:*:;3;::
:*:;3+::
	{
	dateadd_out(3)
	return
	}
:*:;4;::
:*:;4+::
	{
	dateadd_out(4)
	return
	}
:*:;5;::
:*:;5+::
	{
	dateadd_out(5)
	return
	}
:*:;6;::
:*:;6+::
	{
	dateadd_out(6)
	return
	}
:*:;7;::
:*:;7+::
	{
	dateadd_out(7)
	return
	}
:*:;8;::
:*:;8+::
	{
	dateadd_out(8)
	return
	}
:*:;9;::
:*:;9+::
	{
	dateadd_out(9)
	return
	}
:*:;10;::
:*:;10+::
	{
	dateadd_out(10)
	return
	}
:*:;11;::
:*:;11+::
	{
	dateadd_out(11)
	return
	}
:*:;12;::
:*:;12+::
	{
	dateadd_out(12)
	return
	}
:*:;13;::
:*:;13+::
	{
	dateadd_out(13)
	return
	}
:*:;14;::
:*:;14+::
	{
	dateadd_out(14)
	return
	}
:*:;15;::
:*:;15+::
	{
	dateadd_out(15)
	return
	}
:*:;16;::
:*:;16+::
	{
	dateadd_out(16)
	return
	}
:*:;17;::
:*:;17+::
	{
	dateadd_out(17)
	return
	}
:*:;18;::
:*:;18+::
	{
	dateadd_out(18)
	return
	}
:*:;19;::
:*:;19+::
	{
	dateadd_out(19)
	return
	}
:*:;20;::
:*:;20+::
	{
	dateadd_out(20)
	return
	}
:*:;21;::
:*:;21+::
	{
	dateadd_out(21)
	return
	}
:*:;22;::
:*:;22+::
	{
	dateadd_out(22)
	return
	}
:*:;23;::
:*:;23+::
	{
	dateadd_out(23)
	return
	}
:*:;24;::
:*:;24+::
	{
	dateadd_out(24)
	return
	}
:*:;25;::
:*:;25+::
	{
	dateadd_out(25)
	return
	}
:*:;26;::
:*:;26+::
	{
	dateadd_out(26)
	return
	}
:*:;27;::
:*:;27+::
	{
	dateadd_out(27)
	return
	}
:*:;28;::
:*:;28+::
	{
	dateadd_out(28)
	return
	}
:*:;29;::
:*:;29+::
	{
	dateadd_out(29)
	return
	}
:*:;30;::
:*:;30+::
	{
	dateadd_out(30)
	return
	}
:*:;31;::
:*:;31+::
	{
	dateadd_out(31)
	return
	}

:*:;ke;::
:*:;ke-::
:*:;kge;::
:*:;k0e-::
:*:,,ek-::
:*:;kongetu;::
:*:;konngetu;::
:*:,,konngetu::
:*:,,kongetu::
{
clipboard_backup = %ClipboardAll%
clipboard=

;今月のノートのリンクを出す

a_mm1 = 0%a_mm%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%%a_mm1%


Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		clipboard := textb
		clipwait,1
		
		sleep,100
		send,^v
	
		sleep,100
		Clipboard := clipboard_backup
		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、今月のリンクがありませんでした。

}

:*:;se-::
:*:,,senngetu::
:*:,,sengetue::
:*:;sengetue::
:*:;senngetue::
:*:,,es-::

{
clipboard_backup = %ClipboardAll%
clipboard=
;-1月のEvernoteカレンダーのリンクを張る
a_mm1 = %a_mm% -1
a_mm1--
a_mm1 = 0%a_mm1%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%%a_mm1%
*/



Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		clipboard := textb
		clipwait,1
		
		sleep,100
		send,^v
	
		sleep,100
		Clipboard := clipboard_backup
		return
	}

}

msgbox,カレンダーリンクのテキストの中に、先月のリンクがありませんでした。

}


:*:;-2kge;::
:*:;-2ke;::
:*:;2ek-::
:*:;-2ge;::
:*:;2kge-;::
:*:;2ge-;::
:*:;2e-;::
:*:,,-2e.::
:*:,,-2e;::
:*:;sse;::
:*:,,sensengetue::
:*:,,ssge.::
:*:;ssge;::
{
	callink(-2)
	return
}

:*:;-1kge;::
:*:;-1ke;::
:*:;1ek-::
:*:;-1ge::
:*:;1kge-;::
:*:;1ge-;::
:*:;1e-::
:*:,,-1e;::
:*:,,-1e.::
:*:;sge;::
{
	callink(-1)
	return
}
:*:;-3kge;::
:*:;-3ke;::
:*:;3ek-::
:*:;-3ge;::
:*:;3kge-;::
:*:;3ge-;::
:*:;3e-::
:*:,,-3e;::
:*:,,-3e.::
{
	callink(-3)
	return
}
:*:;-4kge;::
:*:;-4ke;::
:*:;4ek-::
:*:;-4ge;::
:*:;4kge-;::
:*:;4ge-;::
:*:;4e-::
:*:,,-4e;::
:*:,,-4e.::
{
	callink(-4)
	return
}
:*:;-5kge;::
:*:;-5ke;::
:*:;5ek-::
:*:;-5ge;::
:*:;5kge-;::
:*:;5ge-;::
:*:;5e-::
:*:,,-5e;::
:*:,,-5e.::
{
	callink(-5)
	return
}
:*:;-6kge;::
:*:;-6ke;::
:*:;6ek-::
:*:;-6ge;::
:*:;6kge-;::
:*:;6ge-;::
:*:;6e-::
:*:,,-6e;::
:*:,,-6e.::
{
	callink(-6)
	return
}
:*:;-7kge;::
:*:;-7ke;::
:*:;7ek-::
:*:;-7ge;::
:*:;7kge-;::
:*:;7ge-;::
:*:;7e-::
:*:,,-7e;::
:*:,,-7e.::
{
	callink(-7)
	return
}
:*:;-8kge;::
:*:;-8ke;::
:*:;8ek-::
:*:;-8ge;::
:*:;8kge-;::
:*:;8ge-;::
:*:;8e-::
:*:,,-8e;::
:*:,,-8e.::
{
	callink(-8)
	return
}
:*:;-9kge;::
:*:;-9ke;::
:*:;9ek-::
:*:;-9ge;::
:*:;9kge-;::
:*:;9ge-;::
:*:;9e-::
:*:,,-9e;::
:*:,,-9e.::
{
	callink(-9)
	return
}
:*:;-10kge;::
:*:;-10ke;::
:*:;10ek-::
:*:;-10ge;::
:*:;10kge-;::
:*:;10ge-;::
:*:;10e-::
:*:,,-10e;::
:*:,,-10e.::
{
	callink(-10)
	return
}
:*:;-11kge;::
:*:;-11ke;::
:*:;11ek-::
:*:;-11ge;::
:*:;11kge-;::
:*:;11ge-;::
:*:;11e-::
:*:,,-11e;::
:*:,,-11e.::
{
	callink(-11)
	return
}
:*:;-12kge;::
:*:;-12ke;::
:*:;12ek-::
:*:;-12ge;::
:*:;12kge-;::
:*:;12ge-;::
:*:;12e-::
:*:,,-12e;::
:*:,,-12e.::
{
	callink(-12)
	return
}



:*:;1kge;::
:*:;1ke;::
:*:;1ek::
:*:;1ge;::
:*:;1kge;::
:*:;1ge;::
:*:;1e::
:*:,,1e;::
:*:,,1e.::
:*:;rge;::
{
	callink(1)
	return
}

:*:;2kge;::
:*:;2ke;::
:*:;2ek::
:*:;2ge;::
:*:;2kge;::
:*:;2ge;::
:*:;2e;::
:*:,,2e.::
:*:,,2e;::
:*:;rrge;::
:*:;rre;::
{
	callink(2)
	return
}

:*:;3kge;::
:*:;3ke;::
:*:;3ek::
:*:;3ge;::
:*:;3kge;::
:*:;3ge;::
:*:;3e::
:*:,,3e;::
:*:,,3e.::
{
	callink(3)
	return
}
:*:;4kge;::
:*:;4ke;::
:*:;4ek::
:*:;4ge;::
:*:;4kge;::
:*:;4ge;::
:*:;4e::
:*:,,4e;::
:*:,,4e.::
{
	callink(4)
	return
}
:*:;5kge;::
:*:;5ke;::
:*:;5ek::
:*:;5ge;::
:*:;5kge;::
:*:;5ge;::
:*:;5e::
:*:,,5e;::
:*:,,5e.::
{
	callink(5)
	return
}
:*:;6kge;::
:*:;6ke;::
:*:;6ek::
:*:;6ge;::
:*:;6kge;::
:*:;6ge;::
:*:;6e::
:*:,,6e;::
:*:,,6e.::
{
	callink(6)
	return
}
:*:;7kge;::
:*:;7ke;::
:*:;7ek::
:*:;7ge;::
:*:;7kge;::
:*:;7ge;::
:*:;7e::
:*:,,7e;::
:*:,,7e.::
{
	callink(7)
	return
}
:*:;8kge;::
:*:;8ke;::
:*:;8ek::
:*:;8ge;::
:*:;8kge;::
:*:;8ge;::
:*:;8e::
:*:,,8e;::
:*:,,8e.::
{
	callink(8)
	return
}
:*:;9kge;::
:*:;9ke;::
:*:;9ek::
:*:;9ge;::
:*:;9kge;::
:*:;9ge;::
:*:;9e::
:*:,,9e;::
:*:,,9e.::
{
	callink(9)
	return
}
:*:;10kge;::
:*:;10ke;::
:*:;10ek::
:*:;10ge;::
:*:;10kge;::
:*:;10ge;::
:*:;10e::
:*:,,10e;::
:*:,,10e.::
{
	callink(10)
	return
}
:*:;11kge;::
:*:;11ke;::
:*:;11ek::
:*:;11ge;::
:*:;11kge;::
:*:;11ge;::
:*:;11e::
:*:,,11e;::
:*:,,11e.::
{
	callink(11)
	return
}
:*:;12kge;::
:*:;12ke;::
:*:;12ek::
:*:;12ge;::
:*:;12kge;::
:*:;12ge;::
:*:;12e::
:*:,,12e;::
:*:,,12e.::
{
	callink(12)
	return
}




:*:;re;::
:*:;re-::
:*:;re+::
:*:,,raigetue::
:*:,,er-::
:*:,,re-::
:*:,,re;::

clipboard_backup = %ClipboardAll%
clipboard=

{
	
;+1月のEvernoteリンクを打つ
a_mm1 = %a_mm% +1
a_mm1++
a_mm1 = 0%a_mm1%

stringright,a_mm1,a_mm1,2


if(a_mm1=13)
{
	a_mm1-=12
	ayear:= a_yyyy
	ayear++
	a_mm1 = %ayear%01
}
else
{
a_mm1 = %A_YYYY%%a_mm1%
}

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		clipboard := textb
		clipwait,1
		
		sleep,100
		send,^v
	
		sleep,100
		Clipboard := clipboard_backup
		return
	}

	
}

msgbox,カレンダーリンクのテキストの中に、来月のリンクがありませんでした。

}







	
;:--  ahk         Autohotkey

;:--  ETC         その他

;--;PlanningFlow

#ifwinactive IndySoft PlanningFlow

f12::
{
	send,!f
	send,a
	return
}

WheelUp::
{
	send,{blind}{ctrl up}
	send,^{up 6}
	return
}
wheeldown::
{
	send,{blind}{ctrl up}
	send,^{down 6}
	return
}

^y::
{
	MouseGetPos, x0, y0
	MouseMove, 462,89
	MouseClick, left

	mousemove,x0,y0
	
	return
	
}


^numpadadd::
{
	
	send,{blind}{ctrl up}
	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x+14,y+7
	
	send,{ctrl down}
	
	return
}

^numpad6::
{
	
	send,{blind}{ctrl up}
	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x+15,y
	
	send,{ctrl down}
	
	return
}

^numpad8::
{
	
	send,{blind}{ctrl up}
	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x,y-10
	
	send,{ctrl down}
	
	return
}

^NumpadSub::
{
	send,{blind}{ctrl up}

	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x-14,y-7
	
	send,{ctrl down}
	return
}

^numpad4::
{
	send,{blind}{ctrl up}

	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x-15,y
	
	send,{ctrl down}
	return
}

^numpad2::
{
	
	send,{blind}{ctrl up}
	mousegetpos,x,y
	x--
	y--
	pixelgetcolor colorpix,x,y
	
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, x, 15
		pixelgetcolor colorpix2,x,y
	}
	EnvSub, x,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		x++
		pixelgetcolor colorpix2,x,y
	}
	
	
		colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		EnvAdd, y, 15
		pixelgetcolor colorpix2, x-1 , y
	}
	
	EnvSub, y,15
	colorpix2 := colorpix
	
	while(colorpix = colorpix2)
	{
		y++
		pixelgetcolor colorpix2, x-1 , y
	}
	
		
	mouseclickdrag,left, x,y,x,y+10
	
	send,{ctrl down}
	
	return
}


home::
^+a::
{
	winactivate,ahk_class AfxFrameOrView42s
	return
}

;カーソル位置をドラッグ
^b::
{

	MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-500,100,2

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+500,bboxy-100

	return
}




f3::
{
	MouseGetPos, x0, y0

	MouseMove, 466,85
	MouseClick, left
	MouseMove, x0, y0

	return
}

#numpad0::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,150
	mousemove, 416,244,0
	mouseclick, left

	sleep,150
	mousemove, 430,125,0
	mouseclick, left

	MouseMove, x0, y0

	return
}

#numpad1::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,150
	mousemove, 380,247,0
	mouseclick, left

	sleep,150
	mousemove, 430,125,0
	mouseclick, left

	MouseMove, x0, y0

	return
}

#numpad2::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,150
	mousemove, 344,227,0
	mouseclick, left
	
	sleep,150
	mousemove, 430,125,0
	mouseclick, left
	
	MouseMove, x0, y0

	return
}

#numpad3::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 324,244,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad4::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 255,246,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad5::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 273,243,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad6::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 435,192,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad7::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 273,194,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad8::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 419,211,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

#numpad9::
{
	MouseGetPos, x0, y0

	MouseMove, 329,102,0
	MouseClick, left

	sleep,200
	mousemove, 290,245,0
	mouseclick, left

	sleep,200
	mousemove, 430,125,0
	mouseclick, left
	

	MouseMove, x0, y0

	return
}

f1::
{
	ifwinactive, - Evernote
	{
		run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kf1.ahk
		return
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	}
 return

}


+f1::
{
	taskchutenextday()
 return

}



^f1::

{
	day := a_dd-1
		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2

		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2

	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

^l::
+^l::
<+^y::
{
	MouseGetPos, x0, y0
	
	MouseMove, 463,86
	MouseClick, left
	MouseMove, x0, y0
	
	return
}
^+c::
{
	MouseGetPos, x0, y0
	
	MouseMove, 500,86
	MouseClick, left
	MouseMove, x0, y0
	return
}
	
<^+s::
>^+s::
{
	MouseGetPos, x0, y0
	
	MouseMove, 520,86
	MouseClick, left
	MouseMove, x0, y0
	return
}

<^+d::
{
	evertitleclick()
	sleep,100
	
	send,{tab 2}
	sleep,100
	
	send,^{home}

/*
	MouseGetPos, x0, y0
	
	MouseMove, 544,86
	MouseClick, left
	MouseMove, x0, y0
	return
*/
}

^f::
{
	winactivate,ahk_class AfxFrameOrView42s
	MouseGetPos, x0, y0
	
	MouseMove, 19,29
	MouseClick, left
	MouseMove, x0, y0
	
	
	return
}

#ifwinactive ahk_class AfxFrameOrView42s

^b::
{

	MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-500,100,5

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+500,bboxy-100
	
	winactivate,ahk_class AfxFrameOrView42s
	MouseGetPos, x0, y0
	
	MouseMove, 19,29
	MouseClick, left
	MouseMove, x0, y0
	
	
	return

	return
}


>^Numpad1::
{
	send,{blind}{ctrl up}
	MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-700,100,0

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+720,bboxy-60
	mouseclick,left

	return
}

>^Numpad2::
{
	send,{blind}{ctrl up}
	MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-500,100,0

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+520,bboxy-60
	mouseclick,left

	return
}

>^Numpad3::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-300,100,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+320,bboxy-60

	return

}

>^Numpad4::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-700,300,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+720,bboxy-260
	mouseclick,left

	return
}

>^Numpad5::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-500,300,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+520,bboxy-260
	mouseclick,left

	return
}

>^Numpad6::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-300,300,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+320,bboxy-260
	mouseclick,left

	return
}

>^Numpad7::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-700,500,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+720,bboxy-460
	mouseclick,left

	return
}

>^Numpad8::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-500,500,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+520,bboxy-460
	mouseclick,left
	

	return
}

>^Numpad9::
{
	send,{blind}{ctrl up}
		MouseGetPos, x0, y0

	MouseMove, a_caretx,a_carety
	mouseclick,left
	mouseclick,left

	sendround += 1

	sleep,100

	mouseclickdrag,left, a_caretx-10,a_carety,-300,500,1

;	MouseClick, left
	sleep,100

	send,{esc}

	mousegetpos bbox,bboxy
	mousemove bbox+320,bboxy-460
	mouseclick,left

	return
}





;--;TreeMemo
#ifwinactive IndySoft TreeMemo

#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\treememo taskset 2013-04-26.ahk

#ifwinactive IndySoft TreeMemo

^h::
{
	send,!a
	return
}


vk1Dsc07B & l::
{
	send,!{right}
	return
}

vk1Dsc07B & h::
{
	send,!{left}
	return
}


vk1Dsc07B & up::
{
	send,!{up}
	return
}

vk1Dsc07B & down::
{
	send,!{down}
	return
}

vk1Dsc07B & left::
{
	send,!{left}
	return
}
vk1Dsc07B & right::
{
	send,!{right}
	return
}

:*?:,,taskset::
{
	sleep,50
	send,{esc}
	send,{f2}
	send,^c
	send,{esc}
	clipwait,10
	
	taskname := clipboard
	
	Inputbox, taskname,Taskset名を入力してください,,,,110,,,,,%taskname%
	
	if (errorlevel = 1)
	{
		return
	}
	
	send,{esc}
	send,^c
	
	temp := clipboard
	
	FileAppend , %Temp%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\taskset\%taskname%.txt
	
	temp = ""

	temp = :*:,,%taskname%::`r
	temp = %temp%{`r
	
	temp = %temp%FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\taskset\%taskname%.txt`r
	
	temp = %temp%StringReplace, temp, temp, ``t,,all`r
	
	temp = %temp%clipboard := temp`r
	temp = %temp%send,{esc}`r
	temp = %temp%send,{vk1Dsc07B}`r
	temp = %temp%send,^v`r
	
	
	temp = %temp%return`r
	temp = %temp%}`r
	
	
	FileAppend , %temp%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\treememo taskset 2013-04-26.ahk
	
	
	reload
	return
}

f12::
{
	send,!f
	send,a
	return
}


:*:,,taskopen::

{
	fileselectfile,templib,,C:\Users\stroketip\Desktop\ショートカット\ahk\library\taskset\
	send,+{tab 2}
	fileread,trick,%templib%
	clipboard = %trick%

	send,^v

	return
}

:*:,,tasksave::
{
	if(tasklib = )
	{
		return
	}
	send,{esc}
	send,^c
	
	temp := clipboard
	
	filedelete ,%templib%
	FileAppend , %Temp%, %templib%

	return
}

^a::
{
	send,{home}
	send,+{end}
	return
}



;--;Schedule Watcher

#ifwinactive Schedule Watcher

n::
{
	send,!en
	return
}

m::
{
	send,!em
	return
}	

>^+t::
{
	send,{blind}{ctrl up}
	MouseGetPos, x0, y0
	
	mouseclick,left,86,602,,0
	MouseMove, x0, y0,0


	return
}


^d::
^s::
{
	send,{appskey}
	send,send
	send,{tab 4}
	return
}

f1::
{
		ifwinactive, - Evernote
	{
		run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kf1.ahk
		return
	}

	taskchutetoday()
 return
}

^f::
{
	send,tf
	winwait,検索
	send,{tab 5}
	return
}


+f1::
{
	taskchutenextday()
 return

}



^f1::

{
	day := a_dd-1
		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
		if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

#IfWinActive Schedule Watcher ahk_class TFrmMain

^n::
{
	send,en
	return
}
^m::
{
	send,em
	return
}

i::
{
	Send,ea
	WinWait,ahk_class TDlgSchInput
	Send,{Tab}{Tab}{Tab}
	Return
}

t::
{
	send,et
	return
}

^t::
{
	send,{tab 3}
	return
}

;//  ↓
;// スケジュールの”追加”画面で、[をおすと
;//　件名にカーソルを移動する。
;//

#IfWinActive スケジュールの追加 ahk_class TDlgSchInput
[::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 99,131
	MouseClick, left
	MouseMove, x0, y0
	
	return
}





^l::
^p::
{
	MouseGetPos, x0, y0

	MouseMove, 172,164
	MouseClick, left
	mouseclick, left
	MouseMove, x0, y0

	return
}


^7::
^numpad7::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,17:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,18:00

	MouseMove, x0, y0

	return
}

^8::
^numpad8::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,18:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,19:00

	MouseMove, x0, y0

	return
}

^9::
^numpad9::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,19:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,20:00

	MouseMove, x0, y0

	return
}

^0::
^numpad0::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,10:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,11:00

	MouseMove, x0, y0

	return
}


^-::
^numpadsub::
{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard

	stringleft, temp,tmp,2
	temp = %temp%:30
	send,%temp%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	temp++
	send,%temp%:30

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
}


^1::
^numpad1::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,11:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,12:00

	MouseMove, x0, y0

	return
}


^2::
^numpad2::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,12:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,13:00

	MouseMove, x0, y0

	return
}

^3::
^numpad3::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,13:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,14:00

	MouseMove, x0, y0

	return
}

^4::
^numpad4::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,14:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,15:00

	MouseMove, x0, y0

	return
}
^5::
^numpad5::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,15:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,16:00

	MouseMove, x0, y0

	return
}
^6::
^numpad6::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,16:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,17:00

	MouseMove, x0, y0

	return
}


^u::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph += 1
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph++
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

<^<+u::
^j::
{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph -= 1
	
	
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph++
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}




^i::


{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

<^+i::
^k::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+down::
^o::
<^+::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{up}

	MouseMove, x0, y0
	return
}
^+up::
^+o::
<^=::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{down}

	MouseMove, x0, y0
	return
}





^t::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	return
}


^d::
{
	MouseGetPos, x0, y0

	MouseMove, 193,67
	MouseClick, left
	MouseMove, x0, y0
	return
}

/*
^+d::
{
	evertitleclick()
	sleep,100
	
	send,{tab 2}
	sleep,100
	
	send,^{home}
	return
}
*/


@::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 104,197
	MouseClick, left
	MouseMove, x0, y0
}

	Return

]::
{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 50,235
	MouseClick, left
	MouseMove, x0, y0

	Return
}




	
;//
;// スケジュールの”編集”画面で、[をおすと、
;//　件名にカーソルを移動する。
;//




;//
;// スケジュールの”追加”画面で、]をおすと、
;//　メモにカーソルを移動する。
;//



#IfWinActive スケジュールの訂正 ahk_class TDlgSchInput


[::
{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 99,131
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^l::
^p::
{
	MouseGetPos, x0, y0

	MouseMove, 172,164
	MouseClick, left
	mouseclick, left
	MouseMove, x0, y0

	return
}


^7::
^numpad7::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,17:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,18:00

	MouseMove, x0, y0

	return
}

^8::
^numpad8::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,18:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,19:00

	MouseMove, x0, y0

	return
}

^9::
^numpad9::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,19:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,20:00

	MouseMove, x0, y0

	return
}

^0::
^numpad0::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,10:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,11:00

	MouseMove, x0, y0

	return
}


^-::
^numpadsub::
{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard

	stringleft, temp,tmp,2
	temp = %temp%:30
	send,%temp%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	temp++
	send,%temp%:30

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
}


^1::
^numpad1::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,11:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,12:00

	MouseMove, x0, y0

	return
}


^2::
^numpad2::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,12:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,13:00

	MouseMove, x0, y0

	return
}

^3::
^numpad3::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,13:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,14:00

	MouseMove, x0, y0

	return
}

^4::
^numpad4::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,14:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,15:00

	MouseMove, x0, y0

	return
}
^5::
^numpad5::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,15:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,16:00

	MouseMove, x0, y0

	return
}
^6::
^numpad6::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,16:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,17:00

	MouseMove, x0, y0

	return
}


^u::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph += 1
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph++
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

<^<+u::
^j::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph -= 1
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph--
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}




^i::


{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+i::
^k::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+down::
^o::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{up}

	MouseMove, x0, y0
	return
}
^+up::
^+o::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{down}

	MouseMove, x0, y0
	return
}





^t::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	return
}


^d::
{
	MouseGetPos, x0, y0

	MouseMove, 193,67
	MouseClick, left
	MouseMove, x0, y0
	return
}


^+d::
{
	MouseGetPos, x0, y0

	MouseMove, 126,63

	MouseClick, left
	MouseMove, x0, y0
	return
}



@::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 120,194
	MouseClick, left
	MouseMove, x0, y0

	return

}

]::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 66,246
	MouseClick, left
	MouseMove, x0, y0
}

	Return

	


;//Shift+Ctlr+Alt+,をおすと、googlecalendarと同期するを
;//実行して、エンターを送り実行する だめだった



#ifwinactive スケジュール一覧

del::
{
	send,^d
	send,{enter}
	return
}

+del::
{
	send,^d
	return
}

^enter::
^t::
t::
^numpadEnter::

{
	send,{enter}

	winwait,スケジュールの訂正

	MouseGetPos, x0, y0

	MouseMove, 191,69
	MouseClick, left
	MouseMove, x0, y0

	return
}

#ifwinactive 検索

@::
{
	MouseGetPos, x0, y0
	
	MouseMove, 118,198
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

[::
{
	MouseGetPos, x0, y0
	
	MouseMove, 129,148
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

]::
{
	MouseGetPos, x0, y0
	
	MouseMove, 115,229
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^t::
{
	MouseGetPos, x0, y0
	
	MouseMove, 36,84
	MouseClick, left
	
	mousemove, 160,82
	
	MouseMove, x0, y0
	
	return
}

#ifwinactive ToDoの追加

[::
{
	MouseGetPos, x0, y0
	
	MouseMove, 108,114
	sleep,20
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

@::
{
	MouseGetPos, x0, y0
	
	MouseMove, 116,148
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

]::
{
	MouseGetPos, x0, y0
	
	MouseMove, 14,249
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^d::
^t::
{
	MouseGetPos, x0, y0
	
	MouseMove, 205,51
	MouseClick, left
	MouseMove, x0, y0
	return
}

^s::
{
	MouseGetPos, x0, y0
	
	MouseMove, 238,86
	MouseClick, left
	MouseMove, x0, y0
	
	sleep,30
	
	mousemove, 204,84
	mouseclick, left

	return
}

^p::
{
	MouseGetPos, x0, y0
	
	MouseMove, 96,179
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^f::
{
	MouseGetPos, x0, y0
	
	MouseMove, 426,372
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^numpadadd::
{
	MouseGetPos, x0, y0
	
	MouseMove, 485,184
	MouseClick, left
	MouseMove, x0, y0
	return
}
^numpadsub::
{
	MouseGetPos, x0, y0
	
	MouseMove, 291,183
	MouseClick, left
	MouseMove, x0, y0
	
	return
}
	

#ifwinactive ToDoの訂正

[::
{
	MouseGetPos, x0, y0
	
	MouseMove, 108,114
	sleep,20
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

@::
{
	MouseGetPos, x0, y0
	
	MouseMove, 116,148
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

]::
{
	MouseGetPos, x0, y0
	
	MouseMove, 14,249
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^d::
^t::
{
	MouseGetPos, x0, y0
	
	MouseMove, 205,51
	MouseClick, left
	MouseMove, x0, y0
	return
}

^s::
{
	MouseGetPos, x0, y0
	
	MouseMove, 238,86
	MouseClick, left
	MouseMove, x0, y0
	
	sleep,30
	
	mousemove, 204,84
	mouseclick, left

	return
}

^p::
{
	MouseGetPos, x0, y0
	
	MouseMove, 96,179
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^f::
{
	MouseGetPos, x0, y0
	
	MouseMove, 426,372
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^numpadadd::
{
	MouseGetPos, x0, y0
	
	MouseMove, 485,184
	MouseClick, left
	MouseMove, x0, y0
	return
}
^numpadsub::
{
	MouseGetPos, x0, y0
	
	MouseMove, 291,183
	MouseClick, left
	MouseMove, x0, y0
	
	return
}


#ifwinactive 「目標」の編集
esc::
{
	send,{tab 2}
	send,{enter}
	return
}

#ifwinactive ahk_class TDlgMemo
esc::
{
	send,{tab 2}
	send,{enter}
	return
}

#ifwinactive ToDoをスケジュールにコピー

[::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 99,131
	MouseClick, left
	MouseMove, x0, y0
	
	return
}





^l::
^p::
{
	MouseGetPos, x0, y0

	MouseMove, 172,164
	MouseClick, left
	mouseclick, left
	MouseMove, x0, y0

	return
}


^7::
^numpad7::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,17:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,18:00

	MouseMove, x0, y0

	return
}

^8::
^numpad8::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,18:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,19:00

	MouseMove, x0, y0

	return
}

^9::
^numpad9::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,19:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,20:00

	MouseMove, x0, y0

	return
}

^0::
^numpad0::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,10:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,11:00

	MouseMove, x0, y0

	return
}


^-::
^numpadsub::
{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard

	stringleft, temp,tmp,2
	temp = %temp%:30
	send,%temp%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	temp++
	send,%temp%:30

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
}


^1::
^numpad1::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,11:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,12:00

	MouseMove, x0, y0

	return
}


^2::
^numpad2::

{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,12:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,13:00

	MouseMove, x0, y0

	return
}

^3::
^numpad3::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,13:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,14:00

	MouseMove, x0, y0

	return
}

^4::
^numpad4::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,14:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,15:00

	MouseMove, x0, y0

	return
}
^5::
^numpad5::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,15:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,16:00

	MouseMove, x0, y0

	return
}
^6::
^numpad6::
{

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	send,16:00

	mousemove, 238,98
	mouseclick,left
	mouseclick,left
	send,17:00

	MouseMove, x0, y0

	return
}


^u::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph += 1
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph++
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+u::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmph -= 1
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	

	tmph--
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}




^i::


{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	
	tmpm += 10

	if tmpm >= 60
	{
		tmpm -= 60
		tmph += 1
	}

	if tmpm < 10

	tmpm =0%tmpm%

	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+i::

{
	clipboard_backup = %ClipboardAll%

	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%



	mousemove, 238,98
	mouseclick,left
	mouseclick,left

	
	send,^c
	clipwait,10

	tmp := clipboard
	stringleft tmph,tmp,2
	stringmid tmpm,tmp,4,2

	if tmph not in 1,2,3,4,5,6,7,8,9,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
	{
		send,%a_hour%:%a_min%
		return
	}
	
	if tmpm < 10
	{
		tmph -= 1
		tmpm += 60
	}
	
	tmpm -= 10
	
	if tmpm < 10

	tmpm =0%tmpm%
	send,%tmph%:%tmpm%

	Clipboard := clipboard_backup


	MouseMove, x0, y0

	return
	


}

^+down::
^o::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{up}

	MouseMove, x0, y0
	return
}
^+up::
^+o::
{
	MouseGetPos, x0, y0

	MouseMove, 123,67
	MouseClick, left

	send,{down}

	MouseMove, x0, y0
	return
}





^t::
{
	MouseGetPos, x0, y0

	MouseMove, 240,69
	MouseClick, left
	mouseclick,left
	return
}


^d::
{
	MouseGetPos, x0, y0

	MouseMove, 193,67
	MouseClick, left
	MouseMove, x0, y0
	return
}


^+d::
{
	MouseGetPos, x0, y0

	MouseMove, 126,63
	MouseClick, left
	MouseMove, x0, y0
	return
}



@::

{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 104,197
	MouseClick, left
	MouseMove, x0, y0
}

	Return

]::
{
	MouseGetPos, x0, y0
	
	WinGetPos, X, Y, Width, Height
	MouseMove, 50,235
	MouseClick, left
	MouseMove, x0, y0

	Return
}

#ifwinactive 指定した日付へ移動

up::
{
	send,{down}
	return
}

down::
{
	send,{up}
	return
}
;--;栄養価計算ヘルシーメーカー432 R3

#ifwinactive - 栄養価計算ヘルシーメーカー

/*
^a::
konndate:
{
	a=C:\Users\stroketip\Desktop\ショートカット\ahk\library\clickimage\clickimage00010.png
	clickimage(a)
	a=
	return
}
*/


;--;Skitch
#ifwinactive Skitch

>^+,::



^s::
{
	send,^+u
	return
}

<^+p::
{
	send,{blind}{ctrl up}
	send,!t
	send,{up 4}
	send,{enter}
	return
}

<^+l::
{
	send,{blind}{ctrl up}
	send,!t
	send,{up 5}
	send,{enter}
	return
}

<^+y::
{
	send,{blind}{ctrl up}
	send,!t
	send,{enter}
	return
}

<^+c::
{
	send,{blind}{ctrl up}
	send,!t
	send,{down 4}
	send,{enter}
	return
}

<^+k::
{
	send,{blind}{ctrl up}
	send,!t
	send,{up 3}
	send,{enter}
	return
}

<^+m::
{
	send,{blind}{ctrl up}
	send,!t
	send,{up 2}
	send,{enter}
	return
}

<^+t::
{
	send,{blind}{ctrl up}
	send,!t
	send,{down}
	send,{enter}
	return
}

<^+h::
{
	send,{blind}{ctrl up}
	send,!t
	send,{down 2}
	send,{enter}
	return
}



<^+u::
{
	send,{blind}{ctrl up}
	send,!t
	send,{down 3}
	send,{enter}
	return
}

<^NumpadEnd::

{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 82,-133,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}
	
	return
}

<^NumpadDown::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 139,-133,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}
	
	return
}
<^NumpadPgDn::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 196,-133,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}
	
	return
}
<^NumpadLeft::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 253,-133,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}
	
	return
}

<^NumpadRight::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 82,-73,5,r
	mouseclick, left
	

	MouseMove, x0, y0
	send,{ctrl down}{shift down}

	
	return
}
<^NumpadHome::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 139,-73,5,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}

	
	return
}
<^NumpadUp::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 196,-73,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}

	
	return
}
<^NumpadPgUp::
{
	send,{blind}{ctrl up}{shift up}
	
	WinGetPos , X, Y, Width, Height, a
	MouseGetPos, x0, y0
	
	
	MouseMove, 30,Height-(Height-453)/2
	MouseClick, left
	
	mousemove, 253,-73,,r
	mouseclick, left
	
	MouseMove, x0, y0
	
	send,{ctrl down}{shift down}

	
	return
}




;--;ors2Editor

#ifwinactive ahk_class TOsEditor2Main

<^+c::
{
	send,!si
	sleep,100
	winget,a
	winactivate,a
	
	MouseGetPos, x0, y0
	
	MouseMove, 154,128
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

f12::
{
	send,!f
	send,a
	return
}

;--;Emeditor

#ifwinactive - EmEditor
f12::
{
	send,!f
	sleep,20
	send,a
	return
}

:*:,,headder::
{
	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\yukkuritalkheadder.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	
	clipboard := clipboard_backup
	
	return
}

;--;sublime
#ifwinactive ahk_class PX_WINDOW_CLASS

f12::
{
	send,^+s
	return
}

:*:,,mkdwn::
:*:,,markdown::
:*:,,mkdown::
:*:,,mkdwon::
{
	send,^s
	sleep,150
	send,title.md
	send,{home}
	send,+{right 5}
	return
}

:*:,,helpmkdown::
:*:,,helpmkdwon::
:*:,,helpmkdwn::
{
	run,http://qiita.com/tbpgr/items/989c6badefff69377da7
	return
}


;--;秀丸エディタ
;hidemaruedita
;秀丸editer


#ifwinactive 秀丸
#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot.ahk
#ifwinactive 秀丸

:*:,,textset::
{
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshotset.ahk
	return
}

:*:,,kinnkyuuteisi::
:*:,,stopahk::
:*:,,ahkstop::
{
	send,{home}
	send,+{end}
	sleep,100
	send,shift & pause::pause
	return
}


!1::
{
	send,!{numpad1}
	return
}

<+z::
{
	Errorlevel =

process, exist,hookright.exe

if(Errorlevel <> 0)
{
return
}
	soundplay, C:\Users\stroketip\Desktop\ショートカット\ahk\library\sound\決定.wav
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\compile\hookright.exe
	return
}
f9::
{
	send,^{left}
	send,`%
	send,^{right}
	send,`%
	return
}

:*:,,winhide::
{
	send,{vk1Dsc07B}
	send,WinHide `, WinTitle`, WinText`, ExcludeTitle`, ExcludeText
	
	return
}

:*:,,close::
{
	send,Process`, Close`, PID-or-Name
	send,+{left 11}
	return
}


vk1Dsc07B & space::
{

	if (orchis ="hidemaru")
	{
		winactivate,ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
		sleep,50
		MouseGetPos, x0, y0
		
		MouseMove, 11,9,0
		MouseClick, left
		MouseMove, x0, y0
		orchis = 
		sleep,100
		mouseclick,left
		return
	}
	global orchis = "hidemaru"
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "秀丸" -g 1123 930 -s
	return

}


:*:,,evernoteget::
{
	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\evernoteget.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}


:*:,,resize::
{
	send,run,C:\Program Files\irfanview\i_view64.exe /clippaste /resize_long=300 /aspectratio /resample /convert=C:\Users\stroketip\Documents\my project\temp2.jpg
	return
}
/*
:?:..::
{
	send,`,
	return
}
*/


:*:,,fileopen::
:*:,,selectfile::
:*:,,fileselect::
{
	send,fileselectfile,temp,,C:\Users\stroketip\Desktop\ショートカット
	send,{vk1Dsc07B}
	send,\ahk\library\taskset\
	return
}

:*:,,replace::
{
	send,StringReplace, OutputVar, InputVar, SearchText , ReplaceText
	send,{left 36}
	send,+{left 10}
	return
}

:*:,,find::
:*:,,found::
{
	send,FoundPos := RegExMatch(temp, "text")
	send,{left}
	send,+{left 6}

	return
}

:*:,,hidemaru::
{
	send,run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe 
	return
}

:*:,,clipfan::
{
	
	send, run,C:\Program Files\IrfanView`\i_view32.exe /clippaste /hide=7

	
	return
}

:*:,,flash::
{
	clipboard_backup = %ClipboardAll%
	
	send,`tclipboard_backup = `%ClipboardAll`%`ntemp = `" text `"`n	clipboard := temp`n	clipwait,10`nsend,^v`n`nClipboard := clipboard_backup`nreturn`n`}
	
	send,{up 9}
	send,{right}+{right 8}
	
	Clipboard := clipboard_backup
	return
}

:*:,,winsize::
{
	send,WinMove, WinTitle, , X, Y , Width, Height
	send,{left 24}
	send,+{left 8}
	return
}

/*
appskey::

	{
	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
	}

+appskey::
	{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	send,{vk1Dsc07B}
	send,%A_year%-%a_mm%-%day%
;	send,タスクシュート　%A_year%-%a_mm%-%a_dd%
	return
	}

<^appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

<^+appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return	
}

!appskey::
{
	send,{vk1Dsc07b}
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}	
*/
:*:,,helpinclude::
{
	send,{vk1Dsc07B}
	send,{#}include C:\Users\stroketip\Desktop\
	send,ショートカット
	send,{enter}
	send,{vk1Dsc07B}
	send,\ahk\library\hyouji 2013-04-11.ahk
	send,+{left 21}
	return
}

:*:,,runasnum0::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kinsert.ahk
	clipwait,10
	sleep,5
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum1::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kend.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum2::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kdown.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum3::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kinsert.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum4::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kleft.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum5::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2knum5.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum6::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kright.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum7::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2khome.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum8::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kup.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,runasnum9::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	clipboard = run`,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgup.ahk
	clipwait,10
	sleep,5	
	send,^v
	Clipboard := clipboard_backup
	
return
}


:*:,,hidden::
:*:,,gazouhyouji::
:*:,,hide7::
{
	send,{vk1Dsc07B}
	send,{{}
	send,{enter}
	send,send,{^}a
	send,{enter}
	send,send,{{}del{}}
	send,{enter}
	send,send,{^}d
	send,{enter}
	send,sleep,50
	send,{enter}
	send,run,C:\Program Files\irfanview\i_view64.exe
	send,{vk1Dsc07B}
	send,{space}
	send,C:\Users\stroketip\Documents\my project{\}.png {/}hide=7
	send,{enter}
	send,return
	send,{enter}
	send,{}}
	send,{up 2}
	send,{right 7}
	return
}

:*:,,irfan::
{
	send,run,C:\Program Files\irfanview\i_view64.exe
	return
}


:*:,,delete::
{
	send,FileDelete , D
	send,+{left}
	return
}


:*?:,,click.::
{
	send,mouseclick,left,X,Y
	send,{space}
	send,,,S,D|U,R
	send,{left 13}
	send,+{right 1}
	return
}
	

:*:,,getpos::
{
	send,WinGetPos , X, Y, Width, Height, WinTitle
	send,+{left 8}
	return
}

:*:,,soutaiidou::
{
	send,MouseMove, X, Y, S, R
	send,{left 9}
	send,+{left}
	return
}


:*:,,winget::
{
	send,WinGet, OutputVar, ID, Wintitle
	send,{left 14}
	send,+{left 9}
	return
}


:*:,,soundplay::
{
	send,soundplay, C:\Users\stroketip\Music\sound effect\.mp3
	send,{left 4}
	return
}

:*:,,soundmute::
:*:,,soundout::
:*:,,mute::
{
	send,{vk1Dsc07B}
	send,soundgetwavevolume, soundvolume
	send,{enter}
	send,soundSetWaveVolume, -100
	return
}

:*:,,soundin::
{
	send,{vk1Dsc07B}
	send,soundsetwavevolume, soundvolume
	send,{enter}
	send,soundvolume=
	return
}
:*:,,wakunasi::
{
	send,Gui, 1:-Border
	return
}

	

:*:,,renzoku::
:*:,,rennzoku::
{
	send,{^}com::
	send,{enter}
	send,{{}
	send,{enter}
	send,send,{{}blind{}}{{}ctrl up{}}
	send,{enter 2}

	send,if(A_PriorHotkey = {"}{^}com{"})
	send,{enter}
	send,{{}
	send,{enter}
		send,send,2
		send,{enter}
	send,{}}
	send,{enter}
	send,else
	send,{enter}
	send,{{}
	send,{enter}
	send,send,1
	send,{enter}
	send,{}}
	send,{enter}
	send,send,{{}ctrl down{}}
	send,{enter 2}

	send,return
	send,{enter}
	send,{}}
	send,{up 16}
	send,+{right 3}
	return
}


:*:,,chip::
:*:,,tip::
:*:,,helptip::

{
	send,ToolTip , Text, X, Y, tipnumber
	send,{left 17}
	send,+{left 4}
	return
}

:*:,,kiru::
:*:,,ageru::
:*:,,hanasu::
{
	send,send,{{}blind{}}{{}ctrl up{}}
	return
}
:*:,,osu::
{
	send,send,{{}ctrl down{}}
	return
}

:*:,,num.::
{
	send,NumpadDot
	return
}
:*:,,numenter::
{
	send,NumpadEnter
	return
}
:*:,,numadd::
:*:,,numplus::
:*:,,num++::
{
	send,NumpadAdd
	return
}

:*:,,numhiku::
:*:,,num-::
:*:,,numinus::
:*:,,numminus::
:*:,,nummainasu::
{
	send,NumpadSub
	return
}

^+up::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,{home}
	send,+{end}
	send,^x
	clipwait,10
	
	temp:= clipboard
	clipboard=
	
	send,{up}{home}+{end}
	send,^x
	clipwait,10
	
	temp2 := clipboard
	
	clipboard := temp
	send,^v
	
	send,{down}
	
	clipboard := temp2
	send,^v
	send,{up}{home}
	
	Clipboard := clipboard_backup
	return
}
	


^+down::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,{home}
	send,+{end}
	send,^x
	
	temp := clipboard
	clipboard=
	
	send,{down}{home}+{end}
	send,^x
	clipwait,10
	
	temp2 := clipboard
	
	clipboard := temp
	
	send,^v
	
	send,{up}
	
	clipboard := temp2
	
	send,^v
	send,{down}{home}
	
	
	Clipboard := clipboard_backup
	
	return
}
	
	


:*:,,num/::
{
	send,NumpadDiv
	return
}
:*:,,num*::
{
	send,NumpadMult
	return
}
:*:,,+num1::
:*:,,num+1::
{
	send,NumpadEnd
	return
}
:*:,,+num2::
:*:,,num+2::
{
	send,NumpadDown
	return
}
:*:,,+num3::
:*:,,num+3::
{
	send,NumpadPgDn
	return
}
:*:,,+num4::
:*:,,num+4::
{
	send,NumpadLeft
	return
}
:*:,,+num5::
:*:,,num+5::
{
	send,NumpadClear
	return
}
:*:,,+num6::
:*:,,num+6::
{
	send,NumpadRight
	return
}
:*:,,+num7::
:*:,,num+7::
{
	send,NumpadHome
	return
}
:*:,,+num8::
:*:,,num+8::
{
	send,NumpadUp
	return
}
:*:,,+num9::
:*:,,num+9::
{
	send,NumpadPgUp
	return
}
:*:,,+num0::
:*:,,num+0::
{
	send,NumpadIns
	return
}
:*:,,+num.::
:*:,,num+.::
{
	send,NumpadDel
	return
}
:*:,,num1::
{
	send,Numpad1
	return
}

:*:,,tasu::
:*:,,plus::
{
	send,EnvAdd, Var, Value
	send,{left 7}
	send,+{left 3}
	return
}

:*:,,waru::
{
	send,EnvDiv, Var,Value
	send,{left 6}
	send,+{left 3}
	return
}

:*:,,kakeru::
:*:,,mult::
{
	send,EnvMult, Var,Value
	send,{left 6}
	send,+{left 3}
	return
}
:*:,,hiku::
:*:,,mainasu::
:*:,,minus::
{
	send,EnvSub, Var,Value
	send,{left 6}
	send,+{left 3}
	return
}



:*:,,sprit::
:*:,,split::
{
	send,StringSplit, OutputArray, InputVar , Delimiters(``r, OmitChars
	send,{left 39}
	send,+{left 11}
	return
}

^f12::
{
	send,^o
	return
}


^d::
{
	clipboard_backup = %ClipboardAll%
	temp2 := clipboard
	
	send,^c
	clipwait,10
	
	temp := clipboard
	
	if(temp = temp2)
	{
		sleep,50
		send,^!{left}
		send,+^!{right}
		send,^c
		clipwait,10
		
		send,^f
		sleep,50
		
		send,^{home}
		sleep,20
		send,^v
		send,{enter}
		clipboard_backup = %ClipboardAll%
	}
	else
	{
		send,^f
		sleep,50
		
		send,^{home}
		sleep,20
		send,^v
		send,{enter}
	}
	return
}

^l::
{
	send,{home}
	send,+{end}
	return
}

vk1Dsc07B & /::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard = z/cde
	send,^x
	clipwait,10
	temp := clipboard
	
	if (temp = "z/cde")	
	{
		send,{space}{;}
	}
	else
	{
		send,{/}{*}
		clipboard := temp
		
		send,^v
		send,a_space
		send,{*}{/}
	}
	
	Clipboard := clipboard_backup
	return
}

vk1Dsc07B & right::
{
	clipboard_backup = %ClipboardAll%
	clipboard =

	send,+{home}
	send,^c
	clipwait,10
	send,{tab}


	stringlen temp,clipboard
	send,{right %temp%}

	Clipboard := clipboard_backup

return
}

vk1Dsc07B & left::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,+{home}
	send,^c
	clipwait,10
	stringlen,temp,clipboard
	clipboard =
	send,+{right}
	send,^c
	clipwait,10
	if (clipboard = "`t")
	{
		send,{bs}
		Clipboard := clipboard_backup
		temp--
		send,{right %temp%}
		return
	}
	send,{left}
	send,{right %temp%}
	Clipboard := clipboard_backup
	return
}


vk1Dsc07B & {::
pgup::
{
	send,{home}
	send,{tab}
	return
}

^+left::
vk1Dsc07B & }::
pgdn::
{
	clipboard_backup = %ClipboardAll%
	
	send,{home}
	send,+{right}
	send,^c
	clipwait,10
	if (clipboard = "`t")
	{
		send,{bs}
		Clipboard := clipboard_backup
		return
	}
	send,{left}
	Clipboard := clipboard_backup
	return
}


^+d::
{
	clipboard_backup = %ClipboardAll%
	
	
	send,{home}
	send,+{end}
	
	send,^c
	clipwait,10
	
	temp := clipboard
	
	stringleft,temp2,temp,1


	while (temp2 = "`t")
	{
		stringtrimleft temp,temp,1
		stringleft,temp2,temp,1
	}
	send,{enter}
	clipboard := temp
	send,^v
	
	Clipboard := clipboard_backup
	
	return
}



	return

+del::
{
	send,{home}
	send,+{end}
	send,{del 2}
	return
}

/*
:*:{`n::
{
	send,{{}
	send,{enter}
	send,{tab}
	
	return
	}
	
:*:}_::
{
;	clipboard_backup = %ClipboardAll%
;	
;	send,+{left}
;	send,^c
;	clipwait,10
;	temp := clipboard
;	if(temp = `r)
;	{
;		send,{right}
;		Clipboard := clipboard_backup
;		send,{}}
;		return
;	}
;	else
;	{
;		send,{right}

		send,{}}
		send,{left}
		send,{bs}
		send,{right}
		send,{enter}

;		Clipboard := clipboard_backup
		return
;	}
}



~}::
{
	Input, UserInput, T1 L1 V, {enter}
	IfInString, ErrorLevel, EndKey:ENTER
	{
		getkeystate, ctrlfg, shift
		if ctrlfg = D
		{
			send,{blind}^z
			send,{del}
			send,{end}
			send,{right}
			send,{left}
		;	send,{left}

		}
	;		Clipboard := clipboard_backup
		return

	}
	return
}

*/



:*:,,caps::
{
	send,sc03a::
	return
}
	

:*:,,input::
{
	send,{home}
	send,+{end}
	sleep,100
	send,Input, UserInput, V T5 L4 C, {{}enter{}}.{{}esc{}}{{}tab{}}, btw,otoh,fl,ahk,ca
send,{enter}
send,if ErrorLevel = Max
send,{enter}
send,{{}
send,{enter}
send,    MsgBox, You entered "
send,`%
send,UserInputs
send,`%
send,{"}
send,{enter}
send,    return
send,{enter}
send,{}}
return
}


:*:,,2stroke::
{
	send,{home}
	send,+{end}
	sleep,100
	
send,{vk1Dsc07B}
send,	{^}c::                                     ;first key
send,{enter}
send,{tab}
send,    Input,InputChar,C I L1 T2,{{}Esc{}},x,s  ;second keys
send,{enter}
send,    if ErrorLevel=Match
send,{enter}
send,    {{}
send,{enter}
send,        if InputChar=x                   ;actions
send,{enter}
send,            Send,{!}{{}F4{}}
send,{enter}
send,        else
send,{enter}
send,        if InputChar=s
send,{enter}
send,            Send,{^}s
send,{enter}
send,    {}}
send,{enter}
send,    return
send,{enter}
return
}



:*:,,double::
{
send,{vk1Dsc07B}
send,~Ctrl::
send,{enter}
send,if A_TickCount < `%ctrldouble`%
send,{enter}
send,{{}
send,{enter}
send,{tab}`;some action
send,{enter}
send,msgbox,doubletap.
send,{enter}
send,    ctrldouble = 0
send,{enter}
send,{}}
send,{enter}
send,else
send,{enter}
send,{{}
send,{enter}
send,    ctrldouble = `%A_TickCount`%
send,{enter}
send,    ctrldouble {+}= 400
send,{enter}
send,{}}
send,{enter}
return
}


:*:,,einput::
:*:,,finput::
{
send,Input, UserInput, V T5 L4 C, {{}enter{}}.{{}esc{}}{{}tab{}}, btw,otoh,fl,ahk,ca
send,{enter}
send,if ErrorLevel = Max
send,{enter}
send,{{}
send,{enter}
send,    MsgBox, You entered "
send,`%
send,UserInputs
send,`%
send,{"}
send,{enter}
send,    return
send,{enter}
send,{}}
send,{enter}
send,if ErrorLevel = Timeout
send,{enter}
send,{{}
send,{enter}
send,    MsgBox, You entered "
send,`%UserInput`%"
send,{enter}
send,    return
send,{enter}
send,{}}
send,{enter}
send,if ErrorLevel = NewInput
send,{enter}
send,    return
send,{enter}
send,IfInString, ErrorLevel, EndKey:
send,{enter}
send,{{}
send,{enter}
send,    MsgBox, "`%UserInput`%" `%ErrorLevel`%
send,{enter}
send,    return
send,{enter}
send,{}}
send,{enter}
send,; Otherwise, a match was found.
send,{enter}
send,SetKeyDelay, -1  ; Most editors can handle the fastest speed.
send,{enter}
send,if UserInput = btw
send,{enter}
send,    Send, {{}backspace 4{}}by the way
send,{enter}
send,else if UserInput = otoh
send,{enter}
send,    Send, {{}backspace 5{}}on the other hand
send,{enter}
send,else if UserInput = fl
send,{enter}
send,    Send, {{}backspace 3{}}Florida
send,{enter}
send,else if UserInput = ca
send,{enter}
send,    Send, {{}backspace 3{}}California
send,{enter}
send,else if UserInput = ahk
send,{enter}
send,    Run, www.autohotkey.com
send,{enter}
send,return
return
}


:*:,,push::
:*:,,getkey::
:*:,,keyget::
{
	send,GetKeyState, temp2, shift
	send,{enter}
	send,if temp2 = D
	send,{enter}
	send,{{}
	send,{enter}
	send,msgbox d
	send,{enter}
	
	send,return
	send,{enter}
	send,{}}
	send,{enter}
	send,else
	send,{enter}
	send,{{}
	send,{enter}
	send,msgbox u
	send,{enter}	
	send,return
	send,{enter}
	send,{}}
	send,{enter}
	
	return
}
	
	
	
:*:,,desktop::
{
	send,{vk1Dsc07B}
	send,C:\Users\stroketip\Desktop\.txt
	send,{left 4}
	return
}
:*:,,caret::
:*:,,ka-soru::
{
	send,{vk1Dsc07B}
	send,mousemove,A_CaretX,A_CaretY
	return
}


:*:,,str::
:*:,,write::
:*:,,append::
{
	send,FileAppend , Text, Filename
	return
}

:*:,,locate::
:*:,,basho::
:*:,,fold::
{
	send,C:\Users\stroketip\Desktop\ショートカット
	send,{enter}
	send,{vk1Dsc07B}
	send,\ahk\.txt
	send,{left 4}
	return
}


/*^+d::
{
	send,{home}+{end}{delete 2}
	return
}
*/

:*:,,load::
{
	send,FileReadLine, OutputVar, Filename, LineNum
	return
}
:*:,,henkan::
{
;	send,send,
;	send,{{}
	send,vk1Csc079
;	send,{}}

	return
}

:*:,,muhen::
{
;	send,send,
	send,{{}
	send,vk1Dsc07B
	send,{}}
	return
}
:*:,.::
{
	if(a_priorhotkey=":*:,,muhen")
	{
	send,{bs}
	send,{left 9}
	send,{bs}
	send,{right 9}
	return
	}
	
	if(a_priorhotkey=":*:,,thishot")
	{
	send,`%
	send,{left 13}
	send,`%
	send,{right 13}
	return
	}
	
	if(a_priorhotkey=":*:,,pref")
	{
	send,`%
	send,{left 14}
	send,`%
	send,{right 14}
	return
	}
	
	if(a_priorhotkey=":*:,,imgclick")
	{
	send,`%
	send,{left 14}
	send,`%
	send,{right 14}
	return
	}
	
	send,,.
	return
}

:*:,,thishot::
{
	send,a_thishotkey
	return
}

:*:,,pref::
{
	send,a_priorhotkey
	return
}

:*:,,clipup::
:*:,,clipout::
{
	send,   clipboard_backup = `%ClipboardAll`%
	send,{enter}
	send,clipboard=
	temp := clipboard
	return
}

:*:,,clipdown::
:*:,,clipin::
{
	send,Clipboard := clipboard_backup
	send,{enter}
	return
}
/*
:*:,,mouse::

{
	send,MouseGetPos, x0, y0
        
	send,{enter}{enter}
	send,MouseMove, 000,000
	send,{enter}
	send,MouseClick, left
	send,{enter}

        send,MouseMove, x0, y0
	send,{enter}
	
	send,{up 3}
	send,{end}
	send,{left 4}
	send,+{left 3}
	
	return
}
*/

MouseGetPos, x0, y0

MouseMove, 000,000
MouseClick, left
MouseMove, x0, y0


:*:,,settitle::
{
	send,SetTitleMatchMode, 2
	return
}
:*:,,ifran::
:*:,,ifrun::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\ifrun.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}
:*:,,ifwinrun::
:*:,,ifwinran::

{

	send,IfWinExist program name
	send,{enter}
	send,{{}
	send,{enter}
	send,{{}
	send,{enter}
	
	send,  WinActivate
	
	send,{enter}
	send,{}}
	send,{enter}
	send,else
	send,{enter}
	send,{{}
	send,{enter}
	send,  Run c:\programname.exe
	send,{enter}
	send,  WinWait program name
	send,{enter}
	send,  WinActivate
	send,{enter}
	send,{}}
	send,{enter}
	return
	
}	



/*
;!left::
;
;{
    ; 退避
    clipboard_backup = %ClipboardAll%
 
    ; 先頭まで選択
    Send +{Home}
 
    ; 選択範囲を読み取る
    Clipboard :=
    Send ^c
    ClipWait, 1
    selected := Clipboard
 
    ; クリップボードの内容を復元
    Clipboard := clipboard_backup
 
    ; 選択範囲一文字ずつに対してループ
         Loop % StrLen(selected) {
        ; 左から順番に一文字取り出す
        c := SubStr(selected, A_Index, 1)
         
        ; インデント文字かどうかで分岐
        If (c = " " || c = "`t") {
            Send +{Right} ; 選択範囲を狭めて次の文字へ
        } Else {
            Break ; 終了
        }
    }
 
    ; 選択を解除
    Send {right}
    Return

}
	
+!left::
{
	send,!{left}
	return
}

+!right::
{
	send,!{right}
	return
}


!right::
{
	send,{end}
	return
}

^!up::
!up::
{
	 ; 退避
   	clipboard_backup = %ClipboardAll%

	send,{end}
	send,+{home}
	send,^x
	send,{del}
	send,{up}
	send,^v
	send,{enter}
	send,{up}

	clipboard := clipboard_backup

	return
}

^!down::
!down::

{

	
	 ; 退避
   	clipboard_backup = %ClipboardAll%

	send,{end}
	send,+{home}
	send,^x
	send,{del}
	send,{down}
	send,^v
	send,{enter}
	send,{up}

	clipboard := clipboard_backup

	return
}

^!left::
{
	 ; 退避
   	clipboard_backup = %ClipboardAll%

	send,{home}
	send,+{right}

	send,^c

	data := clipboard

	if data = `t
	{
		send,{right}
		send,{del}
	}

	clipboard := clipboard_backup

return

}

^+right::
^!right::
{
	send,{home}
	send,{tab}

    ; 退避
    clipboard_backup = %ClipboardAll%
 
    ; 先頭まで選択
    Send +{Home}
 
    ; 選択範囲を読み取る
    Clipboard :=
    Send ^c
    ClipWait, 1
    selected := Clipboard
 
    ; クリップボードの内容を復元
    Clipboard := clipboard_backup
 
    ; 選択範囲一文字ずつに対してループ
         Loop % StrLen(selected) {
        ; 左から順番に一文字取り出す
        c := SubStr(selected, A_Index, 1)
         
        ; インデント文字かどうかで分岐
        If (c = " " || c = "`t") {
            Send +{Right} ; 選択範囲を狭めて次の文字へ
        } Else {
            Break ; 終了
        }
    }
 
    ; 選択を解除
    Send {right}


    Return
}

*/

f1::
{
	ifwinactive, - Evernote
	{
		run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kf1.ahk
		return
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	}
 return

}


;+f1::
{
	taskchutenextday()
 return

}



^f1::

{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}


;--;Scapple

#ifwinactive - Scapple

f12::
{
	send,^+s
	return
}


;--;ペイントツール　SAI
#ifwinactive SAI

+^n::
{
	send,!l
	send,n
	return
}

vk1Dsc07B & s::
{
send,{blind}{vk1Dsc07B up}
Sleep, 100
Send, ^s

Sleep, 200
WinGettitle, temp,a

if(temp ="JPEG保存")
{
	send,{enter}
	sleep,100
}

Send, !{F4}

WinWait, - IrfanView , 
IfWinNotActive, - IrfanView , , WinActivate, - IrfanView , 
WinWaitActive, - IrfanView , 

Sleep, 100
Send,  +r
return
}


;--;desktoptodo
#ifwinactive - DesktopTodo
<^d::
{
	send,^{delete}
	return
}

/*
#ifwinactive ahk_class RectAce

Rectaceの画面でautohotkeyが使えない・・・

NumpadMult::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	

	mouseclick,left,431,97
	
	mouseclick,left,624,497
	mouseclick,left,624,497
	send,^c
	
	temp := clipboard
	
	stringleft,temp,temp,6
	
	run,C:\Program Files\irfanview\i_view64.exe C:\Users\stroketip\Desktop\hosei_%temp%*.* /clipcopy
	
	return
}
*/

;--;ラベルマイティ
#ifwinactive ahk_class js:LMIGHTYB
f12::
{
	send,^2
	return
}

#ifwinactive 保存
gosub hozon
return

#ifwinactive 置換
vk1Dsc07B & r::
{
	MouseGetPos, x0, y0
	
	MouseMove, 111,143
	MouseClick, left
	send,+{tab 3}
	MouseMove, x0, y0
	
	return
}
#ifwinactive 検索
vk1Dsc07B & r::
{
	MouseGetPos, x0, y0
	
	MouseMove, 111,115
	MouseClick, left
	send,+{tab 3}
	MouseMove, x0, y0
	
	return
}
;--;Mindjet 
#ifwinactive Mindjet

vk1Dsc07B & r::
{
	send,!nr{enter}
	return
}

#ifwinactive オリジナル ラスター
f::
{
	MouseGetPos, x0, y0
	
	MouseMove, 49,154
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

vk1Dsc07B & t::
{
	send,!nr
	send,{down 8}
	send,{enter}
	return
}
;:--  fanner      楽しい


left::
{
	send,{right}
	return
}

right::
{
	send,{left}
	return
}


numpadenter::
{
	send,{f11}
	return
}

;--; Foxit Reader

#ifwinactive - Foxit J-Reader

lbutton & rbutton::
{
	if (pdfmode = 1)
	{
		pdfmode = ""
		return
	}
	
	send,{lbutton up}
	send,{rbutton up}
	send,^0
	pdfmode = 1
	return
}

wheelup::
{

	if (pdfmode = 1)
	{
		send,{left}
	}
	else
	{
		send,{wheelup}
	}
	return
}

wheeldown::
{

	if (pdfmode = 1)
	{
		send,{right}
	}
	else
	{
		send,{wheeldown}
	}
	return
}

;--;Leeyes
#ifwinactive Leeyes -

esc::
{
	WinWait, Leeyes -, 
	IfWinNotActive, Leeyes -, , WinActivate, Leeyes -, 
	WinWaitActive, Leeyes -, 
	mousemove, 5,5
	sleep,100
	send,!f
	Sleep, 100
	send,u
	mousemove,100,100
	sleep,50
	send,!{f4}
	return
}

numpad5::
{
	
	WinWait, Leeyes -, 
	IfWinNotActive, Leeyes -, , WinActivate, Leeyes -, 
	WinWaitActive, Leeyes -, 
	mousemove, 5,5
	sleep,200
	send,!f
	Sleep, 250
	send,u
	mousemove,100,100
	return
}

numpad4::
{
	WinWait, Leeyes -, 
	IfWinNotActive, Leeyes -, , WinActivate, Leeyes -, 
	WinWaitActive, Leeyes -, 
	
	mousemove, 5,5
	sleep,100
	send,!f
	sleep,250
	send,s
	mousemove,100,100
	Sleep, 100
	send,{down}
	
	return
}

numpad0::
{
	WinWait, Leeyes -, 
	IfWinNotActive, Leeyes -, , WinActivate, Leeyes -, 
	WinWaitActive, Leeyes -, 
	
	mousemove, 5,5
	sleep,100
	send,!f
	sleep,20
	send,s
	Sleep, 300
	mousemove,100,100
	send,{down}
	send,!a
	
	return	
	
}


;--;Torrent

#ifwinactive μTorrentPro 3

x::
{
	send,{appskey}
	send,ne
	return
}

;--;Janetter
#ifwinactive Janetter

^w::
^d::
{
	MouseGetPos, x0, y0
	MouseMove, 518,112
	MouseClick, left

	return
}

+^b::
{
{
	send,{blind}{ctrl up}
	mouseclick,left,278,166,,3
	
	clipboard_backup = %ClipboardAll%
	
	send,^a
	send,^c
	
	clipwait,10
	
	temp := clipboard


     send,^c
     clipwait,10

     FileAppend , %temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt


Loop, 1000
{
	FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt, %a_index%
	if Errorlevel <> 0
	{	break
	}

	if (trigger = 1)
	{
		FileAppend , %line%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
		trigger = 0
	}
	

	stringleft,a,line,10
	if (a = "@stroketip")
	{
		stringtrimleft,line,line,11
		stringlen,b,line
		
		if (b = 5) or (b = 4)
		{
			fileappend,%line%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 1
		}
	}
	
}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	
		winwait,タスクシュート　%a_year%-%a_mm%-%a_dd%
		
	}
	
		sleep,200
			send,{vk1Dsc07B}
		send,^g
		sleep,200
		
		send,{vk1Dsc07B}
		send,i100
		send,{enter}
		
		sleep,200
		send,^{up}
		send,{down}

loop,1000
{
	
	
	FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt, %a_index%
	if Errorlevel <> 0
	{
		break
	}
	
	stringmid,temp,line,3,1
	if (temp = ":")
	{
		stringleft,timetemp,line,5
		stringtrimleft,task,line,5
		

		stringleft,judge,task,2
		
		if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimleft,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
		{
			endflag = 1
			stringtrimleft,task,task,2
		}
		
		stringright,judge,task,2
		
		if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimright,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
		{
			endflag = 1
			stringtrimright,task,task,2
		}
		
		clipboard := task
		clipwait,10
		send,^v
		
		if(startflag = 1)
		{
			send,{tab 3}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab 3}
			sleep,50
		}
		
		if(endflag = 1)
		{
			send,{tab 4}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab}
			sleep,400
			send,+{tab 3}
			sleep,200
		}
		
		
		send,{enter}
		
		startflag = 0
		endflag = 0
	}
	
; 10時未満の場合	
	stringmid,temp,line,2,1
	if (temp = ":")
	{
		stringleft,timetemp,line,4
		stringtrimleft,task,line,4
		

		stringleft,judge,task,2
		
		if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimleft,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
		{
			endflag = 1
			stringtrimleft,task,task,2
		}
		
		stringright,judge,task,2
		
		if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimright,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
		{
			endflag = 1
			stringtrimright,task,task,2
		}
		
		clipboard := task
		clipwait,10
		send,^v
		
		if(startflag = 1)
		{
			send,{tab 3}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab 3}
			sleep,50
		}
		
		if(endflag = 1)
		{
			send,{tab 4}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab}
			sleep,400
			send,+{tab 3}
			sleep,200
		}
		
		
		send,{enter}
		
		startflag = 0
		endflag = 0
	}
	
	
}


	return
}
return
}

^f::
{
	MouseGetPos, x0, y0
	MouseMove, 29,250
	MouseClick, left
	
	mousemove,x0,y0
	
	return
}



^b::
{
	send,{blind}{ctrl up}
	mouseclick,left,278,166,,3
	
	clipboard_backup = %ClipboardAll%
	
	send,^a
	send,^c
	
	clipwait,10
	
	temp := clipboard


     send,^c
     clipwait,10

     FileAppend , %temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt


Loop, 1000
{
	FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt, %a_index%
	if Errorlevel <> 0
	{	break
	}

	if (trigger = 1)
	{
		FileAppend , %line%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
		trigger = 0
	}
	

	stringleft,a,line,10
	if (a = "@stroketip")
	{
		stringtrimleft,line,line,11
		stringlen,b,line
		
		if (b = 5) or (b = 4)
		{
			fileappend,%line%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 1
		}
	}
	
}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	
		winwait,タスクシュート　%a_year%-%a_mm%-%a_dd%
		
	}
	
		sleep,200
			send,{vk1Dsc07B}
		send,^g
		sleep,200
		
		send,{vk1Dsc07B}
		send,i100
		send,{enter}
		
		sleep,200
		send,^{up}
		send,{down}

loop,1000
{
	
	
	FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt, %a_index%
	if Errorlevel <> 0
	{
		break
	}
	
	stringmid,temp,line,3,1
	if (temp = ":")
	{
		stringleft,timetemp,line,5
		stringtrimleft,task,line,5
		

		stringleft,judge,task,2
		
		if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimleft,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
		{
			endflag = 1
			stringtrimleft,task,task,2
		}
		
		stringright,judge,task,2
		
		if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimright,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
		{
			endflag = 1
			stringtrimright,task,task,2
		}
		
		clipboard := task
		clipwait,10
		send,^v
		
		if(startflag = 1)
		{
			send,{tab 3}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab 3}
			sleep,50
		}
		
		if(endflag = 1)
		{
			send,{tab 4}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab}
			sleep,400
			send,+{tab 3}
			sleep,200
		}
		
		
		send,{enter}
		
		startflag = 0
		endflag = 0
	}
	
; 10時未満の場合	
	stringmid,temp,line,2,1
	if (temp = ":")
	{
		stringleft,timetemp,line,4
		stringtrimleft,task,line,4
		

		stringleft,judge,task,2
		
		if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimleft,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
		{
			endflag = 1
			stringtrimleft,task,task,2
		}
		
		stringright,judge,task,2
		
		if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
		
		{
			startflag = 1
			stringtrimright,task,task,2
		}
				
		
		if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
		{
			endflag = 1
			stringtrimright,task,task,2
		}
		
		clipboard := task
		clipwait,10
		send,^v
		
		if(startflag = 1)
		{
			send,{tab 3}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab 3}
			sleep,50
		}
		
		if(endflag = 1)
		{
			send,{tab 4}
			clipboard := timetemp
			clipwait,10
			
			send,^v
			send,+{tab}
			sleep,400
			send,+{tab 3}
			sleep,200
		}
		
		
		send,{enter}
		
		startflag = 0
		endflag = 0
	}
	
	
}


	FileDelete , C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt
	FileDelete , C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
	return
}

/*
ExitSub:
{
run,C:\Users\stroketip\Desktop\ショートカット\ahk\lastfoundwindow.ahk
}
*/

;--;winamp
#ifwinactive ahk_class BaseWindow_RootWnd

f8::
{
	send,!e
	return
}

;--;media player classic
#ifwinactive ahk_class MediaPlayerClassicW

f8::
{
	send,^7
	return
}

;--;vlc
#ifwinactive ahk_class QWidget

f9::
{
	send,^l
	return
}

;--;jane

#ifwinactive - Jane Style


/*
#s::
{
	winactivate,Program Manager
	sleep,100
	send,#s
	return
}
*/

;--;Stirling

#ifwinactive Stirling

^g::
{
	send,!s
	sleep,50
	send,j
	return
}


;:--  Environment 環境

;--;evernote
#ifwinactive - Evernote

f23 & 0::

{
	
run,evernote:///view/2489958/s23/31b7ade4-3e90-4b85-afd1-a1f6d329d722/31b7ade4-3e90-4b85-afd1-a1f6d329d722/
	return
}

f23 & 1::
{

;今月のノートを開く

a_mm1 = 0%a_mm%
stringright,a_mm1,a_mm1,2
a_mm1 = %A_YYYY%%a_mm1%

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
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

msgbox,カレンダーリンクのテキストの中に、今月のリンクがありませんでした。
return
}


f23 & 2::
{

;-1月
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

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
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

msgbox,カレンダーリンクのテキストの中に、先月のリンクがありませんでした。
return
}

f23 & 3::
{

;+1月
a_mm1 = %a_mm% +1
a_mm1++
a_mm1 = 0%a_mm1%
stringright,a_mm1,a_mm1,2

if(a_mm1=13)
{
	a_mm1-=12
	ayear:= a_yyyy
	ayear++
	a_mm1 = %ayear%01
}
else
{
a_mm1 = %A_YYYY%%a_mm1%
}

;msgbox,%a_mm1%

Clipboard := clipboard_backup

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
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

msgbox,カレンダーリンクのテキストの中に、来月のリンクがありませんでした。

return	
}

^left::
{
	send,{left 11}
	return
}

vk1Dsc07B & rbutton::
{
	send,{blind}{vk1Dsc07B up}
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,{rbutton}
	sleep,50
	send,c
	
	clipwait,10
	
	temp := clipboard
	clipboard := temp
	
	stringright,checks,temp,3
	
	if(checks = "ahk")
	{
		run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe %temp%
	}
	
	if(checks = "pdf")
	{
		run,C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe %temp%
	}
	
	
	return
}
vk1Csc079 & space::
{
	send,{blind}{vk1Csc079 up}
		if (orchis ="Evernote")
	{
		winactivate,ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
		sleep,50
		MouseGetPos, x0, y0
		
		MouseMove, 11,9,0
		MouseClick, left
		MouseMove, x0, y0
		orchis = 
		sleep,100
		mouseclick,left
		return
	}
	global orchis = "Evernote"

	run,C:\Program Files (x86)\Orchis\orchis.exe -d "evernote" -g 2053 -86 -s
	return
}

vk1Dsc07B & space::
{
	send,{blind}{vk1Dsc07B up}
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\evertag\tagever.ahk
	return
}

f23 & 7::
{
	run,evernote:///view/2489958/s23/90c3f6b6-4d77-4176-b246-4e99c5d36c7e/90c3f6b6-4d77-4176-b246-4e99c5d36c7e/
	return
	}

:*:,,attach::
:*:,,tennpu::
:*:,,tenpu::
{
run,evernote:///view/2489958/s23/5d1c5bdd-1302-4346-a39e-feca8ce0b7ef/5d1c5bdd-1302-4346-a39e-feca8ce0b7ef/

sleep,500

send,^+f

sleep,200

send,resource:application`/`*

return
}

:*:,,kennsaku::
:*:,,kenskau::
{
run,evernote:///view/2489958/s23/5d1c5bdd-1302-4346-a39e-feca8ce0b7ef/5d1c5bdd-1302-4346-a39e-feca8ce0b7ef/
return
}

>^l::
{
	send,{blind}{ctrl up}{shift up}
	send,!n
	sleep,20
	send,l
	
	clipwait,10

	
	send,^+!#s
	return
}

>^+a::
{
	send,{blind}{ctrl up}
	mouseclick,left,115,285,,0
	send,^a
	send,^c
	clipwait,10
	
	return
}

>^+s::
{
	send,^+!#s
	return
}

/*
<^p::
{
	send,{blind}{ctrl up}
	mouseclick,left,555,589,,0
	mouseclick,left

	winwait,ahk_class IrfanView
	sleep,100
	send,^p
	winwait,印刷設定
	winactivate,印刷設定
		
	mouseclick,left,21,222,,0
	
	send,{tab}
	send,^a
	send,12
	send,{tab}

	Input, UserInput, V T3 L1
	if ErrorLevel = Max
	{
		sleep,300
		send,!{f4}
		sleep,400
		winactivate,Evernote
		sleep,100
		
		{
			y =170
			send,{blind}{ctrl up}
			loop 10
			{

			pixelgetcolor color,500,%y%



			stringmid data,color,3,1
			stringmid data2,color,4,1

			if data = E
		{
			mousemove,500,%y%
			mouseclick, left
			break
		}
		else if data2 = C
		{
			mousemove,404,%y%
			mouseclick, left
		}

		y += 19
	
	}


	}
	sleep,500
	send,{del}
	return
}
}	
*/

+^x::
{
	clipboard_backup = %ClipboardAll%
	send,^a
	send,^c
	clipwait,10
	
	ifwinexist,D-SendMail
	{
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	else
	{
		run,C:\Users\stroketip\Desktop\ショートカット\D-SendMail_117 (1)\D-SendMail.exe
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	
	send,{tab 8}
	sleep,50
	send,^v
	sleep,50
	winactivate,D-SendMail
	send,{tab}
	send,^v
	sleep,30
	send,{tab}
	clipboard_backup = %ClipboardAll%
	
	return
}

/*
^+rbutton up::
{
	sleep,30
	send,t
	winwait,タグの割り当て
	winactivate,タグの割り当て
	sleep,50
	
	mouseclick,left,51,269,,0
	return
}

*/

	
	

<^+a::
{
	MouseGetPos, x0, y0
	
	MouseMove, 104,286
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

^p::
{
	evernotedrag(108,348)
	return
	
}
/*
>^+c::
{
	evertitleclick()
		
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	clipboard = 034 やりたいコアトランスフォーメーションやりたいこと
	clipwait,10
	
	sleep,200
	send,{tab}
	send,v
	send,{tab}
	send,{enter}
	
	clipboard_backup = %ClipboardAll%
	clipboard=
	return
}
*/


<^+p::
{
	send,{blind}{ctrl up}{shift up}
	MouseGetPos, x0, y0
	
	MouseMove, 104,351
	MouseClick, left
	MouseMove, x0, y0
	
	return
}


<^q::
{
	evernotedrag(111,326)
	return
}

<^+q::
{
	MouseGetPos, x0, y0
	
	MouseMove, 111,326
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

<^s::
{
	evernotedrag(132,185)
	return
}

<^+s::
{
	MouseGetPos, x0, y0
	
	MouseMove, 132,185
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

<+^i::

{
	evernotedrag(121,154)
	return
}




^+t::
^t::
{
	send,{appskey}
	send,!+t
	return
}

~rbutton::
{
	GetKeyState, temp2, Rbutton
	if temp2 = D

				Input, UserInput, T1.5 L1
					if ErrorLevel = Max
						{
							if (UserInput = "r")
								{
									mouseclick,right
									sleep,100
									send,o
									send,o
									send,{enter}
									return
								}
							else
							{
							if (UserInput = "l")
								{
									mouseclick,right
									sleep,100
									send,ttt
									
			
									send,{enter}
									return
								}
							else
							{
							if (UserInput = "s")
								{
									mouseclick,right
									sleep,100
									send,s
									send,{enter}
									return
								}
							else
							{
							if (UserInput = "t")
								{
									mouseclick,right
									sleep,100
									send,t
									
									winwait,タグの割り当て
									sleep,25
									winactivate,タグの割り当て
									sleep,25
									
									mouseclick,left,37,270,,0
									
									return
								}
							}
						}
						}
		}
	return
}
	

f1::
{
		ifwinactive, - Evernote
	{
		run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kf1.ahk
		return
	}

	taskchutetoday()
return

}


+f1::
{
	taskchutenextday()

}



^f1::

{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}


;Evernote 選択されているタイトルをマウスクリック
<^l::
{
{
	y =170
	send,{blind}{ctrl up}
	loop 10
	{

	pixelgetcolor color,404,%y%

	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	mousemove,404,%y%
	mouseclick, left
	break
	}
	else if data2 = C
	{
	mousemove,404,%y%
	mouseclick, left
	}

	y += 22
	
	}
}

	MouseGetPos, x0, y0
	
	MouseMove, 385,522
	MouseClick, left
	send,^a
	MouseMove, x0, y0
	return
}



/*
<^+l::
{
	MouseGetPos, x0, y0
	
	MouseMove, 102,526
	MouseClick, left
	
	WinGetPos ,,, Width,, a
	
	mousemove, width-50,79
	mouseclick,left
		
	MouseMove, x0, y0
	
	return
}
*/

appskey::

	{
	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
	}

+appskey::
	{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	send,タスクシュート 
	send,{enter}
	send,{space}
	send,{vk1Dsc07B}
	send,%A_year%-%a_mm%-%day%
;	send,タスクシュート　%A_year%-%a_mm%-%a_dd%
	return
	}

rctrl & ralt::
{
	send,タスクシュート
	send,{enter}
	send,{space}
	send,{vk1Dsc07b}
	return
}

>^appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}
<^appskey::
{

	y =170
	send,{blind}{ctrl up}
	loop 10
	{

	pixelgetcolor color,404,%y%



	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	mousemove,404,%y%
	mouseclick, left
	break
	}
	else if data2 = C
	{
	mousemove,404,%y%
	mouseclick, left
	}

	y += 22
	
	}




	MouseGetPos, x0, y0
	
	MouseMove, 399,522
	MouseClick, left
	send,^a
	MouseMove, x0, y0


	
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

/*
	send,タスクシュート 
	send,{enter}

	send,{vk1Dsc07B}
	send,%A_year%-%a_mm%-%day%
*/
	send,{vk1Dsc07B}
	send,タスクシュート　%A_year%-%a_mm%-%day%
	return
	}
^+appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return	
}

!appskey::
{
	send,{vk1Dsc07b}
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

<^w::
{
	evernotedrag(116,258)
	return
}
<^+w::
{
	MouseGetPos, x0, y0
	
	MouseMove, 116,258
	MouseClick, left
	MouseMove, x0, y0
	
	return
}


<^y::
{
	evernotedrag(125,220)
	return
}

<^+y::
{
	MouseGetPos, x0, y0
	
	MouseMove, 125,220
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

<^r::
{
	evernotedrag(127,238)
	return
}

<^+r::
{
	MouseGetPos, x0, y0
	
	MouseMove, 127,238
	MouseClick, left
	MouseMove, x0, y0	
	return
}

^b::
^m::
{
	evernotedrag(101,204)
	return
}
<^+d::
{

		y =170
	
	MouseGetPos, x0, y0
	
	send,{blind}{ctrl up}
	
	loop 18
	{

	pixelgetcolor color,350,%y%


	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	sleep,50
	mouseclick,left,500,%y%
	mousemove,404,%y%
	break
	}
	else if data2 = C
	{
	sleep,50
	mouseclick,left,500,%y%
	sleep,100
	mouseclick ,left,,,,,U
	break
	}

	y += 18
	
	}
	
	MouseMove, x0, y0
	sleep,300
	
	send,{shift up}
	send,{ctrl up}
	send,{tab 2}
	sleep,200
	send,{ctrl down}
	send,^{end}
	sleep,100
	send,{ctrl up}
	return
}

<^j::
{
	evernotedrag(110,275)
	return
}
<^+j::
{
	MouseGetPos, x0, y0
	
	MouseMove, 108,275
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

ins::

{
	send,^+c
	return
}

<^+,::
{
	
	send,^c


	IfWinExist Schedule Watcher
	{
	  WinActivate
	}
	else
	{
	  Run C:\Users\stroketip\Dropbox\d データ保存\Schwatch\Schwatch.exe
	  WinWait Schedule Watcher
	  WinActivate
	}	


	send,^c

	winactivate,Schedule Watcher
	sleep,300
	send,{home}

	Send,ea

	winactivate,Schedule Watcher
	MouseGetPos, x0, y0

	MouseMove, 392,19
	MouseClick, left
	MouseMove, x0, y0

	MouseGetPos, x0, y0

	MouseMove, 168,9
	MouseClick, left
	MouseMove, x0, y0

	Send,{Tab}{Tab}{Tab}
	send,^v


	MouseGetPos, x0, y0

	MouseMove, 30,242
	MouseClick, left

	send,^v
	MouseMove, x0, y0

	send,{tab}

	return

}

>^+l::
{
	send,{blind}{ctrl up}{shift up}
	send,!n
	sleep,20
	send,l
	
	clipwait,10
	temp := clipboard
	
	mousemove 367,514,3
	mouseclick,left
	sleep,150
	
	send,^a
	send, ^c
	clipwait,10
	
	temp2 := clipboard
	
	ifwinexist Schedule Watcher
	{
		winactivate
	}
	else
	{
		run,C:\Users\stroketip\Dropbox\d データ保存\Schwatch\Schwatch.exe
		winwait,Schedule Watcher
		winactivate Schedule Watcher
	}
	

	send,ea
	sleep,200
	winwait,スケジュールの追加
	sleep,200
	winactivate,スケジュールの追加
	mousemove,71,245
	mouseclick,left
	
	clipboard := temp
	send,^v
	
	mousemove, 63,129
	mouseclick,left
	
	
	clipboard := temp2
	send,^v
	
	send,^+{home}
	
	clipboard := temp
	
	return
}
	
	
^+l::
{
{
{	MouseGetPos, x0, y0

	y =170
	send,{blind}{ctrl up}
	loop 10
	{

	pixelgetcolor color,404,%y%

	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	mousemove,404,%y%
	mouseclick, left
	break
	}
	else if data2 = C
	{
	mousemove,404,%y%
	mouseclick, left
	}

	y += 22
	
	}
}
	sleep,100
	mouseclick,right
	sleep,100
	
	send,^+l
	MouseMove, x0, y0
	return
}

	
}

<^+c::
{
        MouseGetPos, x0, y0
		        
        MouseMove, 447,524
        MouseClick, left
	send,^a
	send,^c
	clipwait,10
        MouseMove, x0, y0

        return
}

^+v::
{
        MouseGetPos, x0, y0
        
	{
		y =170
		loop 10
		{

			pixelgetcolor color,404,%y%



			stringmid data,color,3,1
			stringmid data2,color,4,1

			if data = E
				{
					mousemove,404,%y%
					mouseclick, left
					break
				}
			else if data2 = C
				{
					mousemove,404,%y%
					mouseclick,left
					break
				}

		y += 22
	
	}

}
		        
        MouseMove, 447,524
        MouseClick, left
		send,^a
		send,^v
        MouseMove, x0, y0
        
/*        
		Input, UserInput, T2.5 L1
			if ErrorLevel = Max
				{
					if (UserInput = "*")
						{
							send,{end}
							send,{shift down}
							send,{left 2}
							send,{shift up}
							return
						}
					else
					{
					if (UserInput = "/")
						{
							send,{end}
							send,{left 3}
							send,{shift down}
							send,{left 2}
							send,{shift up}
							return
						}
					}
				}
*/
        return

}
;mikansei
;#ifwinexist Evernote
;+#printscreen::
;{
;	send,#printscreen
;	
;	
;	clipwait:
;	send,#s
;	winwait,ASticky
;	winactivate,a
;	send,^v
;	return
;}

;--;Google chrome

;--;FireFox


#ifwinactive 動画 - YouTube - Google Chrome

:*:,,kako::
:*:,,rireki::
<^+k::
{
	MouseGetPos, x0, y0
	MouseMove, 52,126
	MouseClick, left
	
	sleep,500
	mousemove, 97,290
	mouseclick,left
	return
}




#ifwinactive ahk_class WindowsForms10.Window.20008.app.0.33c0d9d

^l::
{
	send,^o
	return
}

^r::
{
	send,^e
	return
}

#ifwinactive - Google Chrome

>^+3::
{
	send,^l
	sleep,100
	
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,^c
	
	clipwait,10
	
	send,{tab}
	send,^w
	
	run,C:\Program Files (x86)\CravingExplorer\CravingExplorer.exe 
	
WinWait, Craving Explorer | 動画専用ブラウザ - Craving Explore, 
IfWinNotActive, Craving Explorer | 動画専用ブラウザ - Craving Explore, , WinActivate, Craving Explorer | 動画専用ブラウザ - Craving Explore, 
WinWaitActive, Craving Explorer | 動画専用ブラウザ - Craving Explore, 


sleep,1700
MouseGetPos, x0, y0
MouseMove, 114,102
MouseClick, left
mousemove, x0,y0

send,^v
sleep,100

send,{enter}
	return
}

:*:,,ka-koma::
{
	send,{vk1Dsc07B}
	send,http://www.hozo.biz/cc/
	send,{enter}
	return
}

<^+d::
{
	x = 92
	
	MouseGetPos, x0, y0
	
	send,{blind}{ctrl up}
	
	loop 7
	{

	pixelgetcolor color,%x%,23


	stringmid data,color,3,1

	if data = 6
	{
	sleep,50
	mousemove,%x%,23
	mouseclick, right
	sleep,100
	mousemove,%x%+50,108
	mouseclick ,left
	break
	}

	x += 192
	
	}
	
	MouseMove, x0, y0

	return
}


vk1Dsc07B & space::

{
	if (orchis ="chrome")
	{
		winactivate,ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
		sleep,50
		MouseGetPos, x0, y0
		
		MouseMove, 11,9,0
		MouseClick, left
		MouseMove, x0, y0
		orchis = 
		sleep,100
		mouseclick,left
		return
	}
	global orchis = "chrome"
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "chrome" -g 1123 930 -s
	return
}

vk1Dsc07B & left::
{
	send,+{tab}
	return
}




vk1Dsc07B & right::
{
	send,{tab}
	return
}

<^+rbutton::
{
	send,{rbutton}
	sleep,50
	send,e
	return
}


<^d::
{
	send,^w
	return
}

^k::
{
	send,^d
	return
}

~esc::
{
	clickflag = 
	return
}

f1::
{

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	}
 return

}


+f1::
{
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



^f1::

{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

<^+p::
{

	send,{blind}{ctrl up}{shift up}
	WinGetPos ,xpos,ypos,widthpos, heightpos,a
	MouseGetPos, x0, y0

	wi := widthpos -123 
	MouseMove, %wi%,50,7
	sleep,20
	MouseClick, left
	
	sleep,200
	
	mousemove,-250,50,,r
	mouseclick,left
	
	clickflag = 1
	
	send,{blind}{ctrl up}{shift up}
	
	return
}

+^e::
{
	WinGetPos ,xpos,ypos,widthpos, heightpos,a
	MouseGetPos, x0, y0

	wi := widthpos -55 
	MouseMove, %wi%,57,7
	MouseClick, left
	
	sleep,100
	
	mousemove,-50,240,,r
	return
}
	
#ifwinactive 動画 - YouTube - Google Chrome


{
	sleep,500
	MouseGetPos, x0, y0
	MouseMove, 49,131
	MouseClick, left
	sleep,300
	
	mousemove, 96,298
	mouseclick, left
	return
}

#ifwinactive ahk_class Chrome_WidgetWin_0

<^+::
{
	if(A_PriorHotkey = "<^+p")
	{

		MouseGetPos, x0, y0
		MouseMove, x0+337-155,y0+25-66
		MouseClick, left
		MouseMove, x0, y0
	}
	return
}	



~esc::
{
	clickflag = 
	return
}


^enter::
{
	mouseclick, left
	return

}
/*
@::
{
	MouseGetPos, x0, y0

	MouseMove, 68,59
	MouseClick, left
	MouseMove, x0, y0

	return
}
*/

<^+k::
<^+l::
{
	send,{blind}{ctrl up}
	MouseGetPos, x0, y0
	
	winactivate,a
	
	MouseMove, 338,32
	MouseClick, left
	MouseMove, x0, y0

	return
}


	

#ifwinactive ,ahk_class Chrome_WidgetWin_1

<^+::
{
	if(A_PriorHotkey = "<^+p")
	{

		MouseGetPos, x0, y0
		MouseMove, x0+320-155,y0+5
		MouseClick, left
		MouseMove, x0, y0
	}
	return
}	

:*:,,honnyaku::
:*:,,honyaku::
{
	send,^a
	send,{del}
	send,https://translate.google.co.jp/
	send,{enter}

	return
}


~esc::
{
	clickflag = 
	return
}

^enter::
{
	mouseclick, left
	return

}
	
/*
@::
{
	MouseGetPos, x0, y0

	MouseMove, 68,59
	MouseClick, left
	MouseMove, x0, y0

	return
}
*/

<^+k::
<^+l::
{
	send,{blind}{ctrl up}
	MouseGetPos, x0, y0
	
	winactivate,a
	
	MouseMove, 338,32
	MouseClick, left
	MouseMove, x0, y0

	return
}


#ifwinactive AutoHotkeyJp - Google Chrome

^+f9::
{
	WinGetPos , X, Y, Width, Height, a
	send,{blind}{ctrl up}{shift up}
	mousemove width-239,110
	mouseclick,left
	return
}

	


#IfwinActive  - Mozilla Firefox

f1::
{
	taskchutetoday()
	return
}


;--;irfanview

;--; Honeyview

#ifwinactive - Honeyview

f1::
{
	taskchutetoday()
	return
}

#IfWinActive - IrfanView

f1::
{
	taskchutetoday()
	return
}


<^+d::
{
WinWait, - IrfanView , 
IfWinNotActive, - IrfanView , , WinActivate, - IrfanView , 
WinWaitActive, - IrfanView , 

Sleep, 100
Send, s
WinWait, 名前をつけて画像を保存 ..., 
IfWinNotActive, 名前をつけて画像を保存 ..., , WinActivate, 名前をつけて画像を保存 ..., 
WinWaitActive, 名前をつけて画像を保存 ..., 

clipboard_backup = %ClipboardAll%
clipboard=
Send, ^c
clipwait,10

time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2
	
	send,{blind}{vk1Dsc07B}
	filename := clipboard
	
	clipboard=
	
	clipboard="C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\%filename%"
	
	send,^v
	send,{enter}
	
	clipboard=


	sleep,200	
	loop,C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\%filename%.*
	{
		temp=%A_LoopFileFullPath%
		clipboard = %temp%
	}
	return
}




<^r::
{
WinWait, - IrfanView , 
IfWinNotActive, - IrfanView , , WinActivate, - IrfanView , 
WinWaitActive, - IrfanView , 

Sleep, 100
Send, s
WinWait, 名前をつけて画像を保存 ..., 
IfWinNotActive, 名前をつけて画像を保存 ..., , WinActivate, 名前をつけて画像を保存 ..., 
WinWaitActive, 名前をつけて画像を保存 ..., 

clipboard_backup = %ClipboardAll%
clipboard=
Send, ^c
clipwait,10

time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2
	
	send,{blind}{vk1Dsc07B}
	filename := clipboard
	
	clipboard=
	
	clipboard="C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\%filename%"
	
	send,^v
	send,{enter}
	
	clipboard=


	sleep,200	
	loop,C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%\%filename%.*
	{
		temp=%A_LoopFileFullPath%
		clipboard = %temp%
	}
;	stringreplace,clipboard,clipboard,",,all
run,C:\Program Files (x86)\RectAce_STD\RectAce_WB.exe

sleep,100
;MouseClick, left,  1810,  575
Sleep, 100
WinWait, RectAce , 
IfWinNotActive, RectAce , , WinActivate, RectAce , 
WinWaitActive, RectAce ,
sleep,100 
MouseClick, left,  130,  100
Sleep, 100
WinWait, ファイルを開く, 
IfWinNotActive, ファイルを開く, , WinActivate, ファイルを開く, 
WinWaitActive, ファイルを開く, 
Send, {CTRLDOWN}v{CTRLUP}{ENTER}

	
return
}

numpadend::
{
	
	send,{alt}f
	sleep,50
	send,e
	sleep,50
	send,{blind}{down}
	send,{enter}
	return
}
NumpadMult::
numpadpgdn::
q::
{
	/*
	send,{alt}f
	sleep,100
	send,e
	sleep,50
	send,{blind}{down 2}
	send,{enter}
	*/
	
	send,+3
	sleep,100
	
	WinWait, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, 
	IfWinNotActive, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, , WinActivate, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, 
WinWaitActive, RectAce （ﾎﾜｲﾄﾎﾞｰﾄﾞ対応）, 
	
	MouseGetPos, x0, y0
	
	sleep,200
	
	MouseMove, 423,106
	MouseClick, left
	MouseMove, x0, y0
	
	Input, UserInput, T5 L1 , 
	{
		if(UserInput = "-")
		
		mouseclick,left,534,97
	
		mouseclick,left,624,497
		mouseclick,left,624,497
		sleep,50
		clipboard_backup = %ClipboardAll%
		clipboard=
		send,^c
		clipwait,10
		temp := clipboard
		sleep,800
		stringleft,temp,temp,6
		ifexist,C:\Users\stroketip\Desktop\hosei_*.*
		{
			loop,C:\Users\stroketip\Desktop\hosei_*.*
			{
			run,C:\Program Files\irfanview\i_view64.exe %A_LoopFileLongPath% /clipcopy
			}
				sleep,1500
		filedelete,C:\Users\stroketip\Desktop\hosei_*.*	
		
		}

	return
	}
	{
		if(UserInput = *)
		
		mouseclick,left,431,97
	
	
		return
	}
	
	return
}

xbutton2::
{
	send,{f12}
	return
}

numpad6::
{
	send,^{pgdn}
	return
}

numpad4::
{
	send,^{pgup}
	return
}

<^+s::
{

	send,{blind}{ctrl up}
	send,{blind}{shift up}
	send,^s
	;新しい画面が表示されるまで待つ
       
    sleep, 850
	send,!s
	sleep, 150
	send,y
	;終了する

	sleep, 400

	send,!{F4}
Return
}


;--;Claunch

#ifwinactive CLaunch

f1::
{

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	}
 return

}


+f1::
{
	taskchutenextday()
 return

}



^f1::

{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

r::
{
	MouseGetPos, x0, y0
	MouseMove, 13,12
	MouseClick, left

	mousemove,x0,y0
	return
}
	
	
;--;Everything

#ifwinactive Everything

<^numpadins::

{
	FileCreateDir, C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%
	run,C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%\
return
}

<^numpadend::

{
	FileCreateDir, C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_1
	run,C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_1\
return
}

<^numpaddown::

{
	FileCreateDir, C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_2
	run,C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_2\
return
}
<^numpadpgdn::

{
FileCreateDir, C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_3
	run,C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%_3\
return
}

appskey::
{
	appskeyopen()
	return

}

<^!rbutton::
{
	openclickpath()
	return
}

<^+rbutton::
{
	clickpath()
	return
}

^rbutton::
{
	pdfopen()
	return
}

vk1Dsc07B & rbutton::
{

	openclickpath()
	return
}

^l::
{
	MouseGetPos, x0, y0
	MouseMove, 103, 62
	MouseClick, left
	mouseclick, left
	
	mousemove,x0,y0
	return
}

>^appskey::
{
	ctrlappskeyopen()
	return
}


;--;Stickies
#ifwinactive ASticky

#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\hyouji 2013-04-11.ahk

#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\ahk2.ahk
;#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\ahk3.ahk
#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\key4ahk(Rii)\ahk4.ahk

#ifwinactive ASticky

<^+s::
{
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\stickiecolor\stickiecolor.ahk
	return
	}

<+z::
{
	Errorlevel =

process, exist,hookright.exe

if(Errorlevel <> 0)
{
return
}
	soundplay, C:\Users\stroketip\Desktop\ショートカット\ahk\library\sound\決定.wav
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\compile\hookright.exe
	return
}

^+space::
{
	mouseclick,r,10,33
	send,{up 9}
	send,{right}
	send,{up 2}
	return
}
+#a::
{
	stickiesiromihon(153,204,255)
	stickiesblackfont()
	return
}
+#b::
{
	stickiesiromihon(255,255,204)
	stickiesblackfont()
	return
}
+#c::
{
	stickiesiromihon(255,153,0)
	stickiesblackfont()
	return
}
+#d::
{
	stickiesiromihon(255,0,0)
	stickiesblackfont()
	return
}
+#e::
{
	stickiesiromihon(0,255,0)
	stickiesblackfont()
	return
}
+#f::
{
	stickiesiromihon(0,102,204)
	stickieswhitefont()
	return
}
+#g::
{
	stickiesiromihon(204,255,204)
	stickiesblackfont()
	return
}
+#h::
{
	stickiesiromihon(255,0,255)
	stickiesblackfont()
	return
}
+#i::
{
	stickiesiromihon(255,255,153)
	stickiesblackfont()
	return
}
+#j::
{
	stickiesiromihon(51,51,153)
	stickieswhitefont()
	return
}
+#k::
{
	stickiesiromihon(5,2,70)
	stickieswhitefont()
	return
}
+#l::
{
	stickiesiromihon(51,103,102)
	stickieswhitefont()
	return
}
+#m::
{
	stickiesiromihon(0,0,0)
	stickieswhitefont()
	return
}
+#n::
{
	stickiesiromihon(51,51,51)
	stickieswhitefont()
	return
}
+#o::
{
	stickiesiromihon(204,153,255)
	stickiesblackfont()
	return
}
+#p::
{
	stickiesiromihon(153,128,153)
	stickiesblackfont()
	return
}
+#q::
{
	stickiesiromihon(102,102,153)
	stickieswhitefont()
	
	return
}
+#r::
{
	stickiesiromihon(255,128,128)
	stickiesblackfont()
	return
}
+#s::
{
	stickiesiromihon(192,192,192)
	stickiesblackfont()
	return
}
+#t::
{
	stickiesiromihon(255,204,153)
	stickiesblackfont()
	return
}
+#u::
{
	stickiesiromihon(0,51,102)
	stickieswhitefont()
	return
}
+#v::
{
	stickiesiromihon(0,128,128)
	stickieswhitefont()
	return
}
+#w::
{
	stickiesiromihon(204,204,255)
	stickiesblackfont()
	return
}
+#x::
{
	stickiesiromihon(0,255,255)
	stickiesblackfont()
	return
}
+#y::
{
	stickiesiromihon(255,153,204)
	stickiesblackfont()
	return
}
+#z::
{
	stickiesiromihon(128,128,128)
	stickieswhitefont()
	return
}



f12::
{
	send,^s
	winwait,名前を付けて保存
	send,{tab}
	send,{down 3}
;	send,{enter}
	send,+{tab}
	
	
	return
}


>+appskey::

	{
	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
	}

>^appskey::
	{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	send,{vk1Dsc07B}
	send,%A_year%-%a_mm%-%day%
;	send,タスクシュート　%A_year%-%a_mm%-%a_dd%
	return
	}

:*:maketaskchute::
:*:,,maketaskchute::

{
	nowmonthday := monthday()
	

	loop,%nowmonthday%
{
	loopindex := a_index
	
	if(loopindex < 10)
	
	loopindex = 0%loopindex%
	
	filecopy,C:\Users\stroketip\Dropbox\xls\tタスクシュート\r 来月分原紙\original.xlsm,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%loopindex%.xlsm
}

	return
}


	
	
	
	
monthday()
{
	month= %a_mon%
	
	if (month=4)or (month=6) or (month= 9) or(month=11)
	{
	nowmonth = 30
	}
	else 
	{
	nowmonth = 31
	}
	
	if (month =2)
	{
	if(mod(a_year,4)=0)
	{
	nowmonth = 29
	}
	else
	{
		nowmonth = 28
	}
	}
	
	return,nowmonth
}
	

mbutton::
{
	send,^t
	return
}

:*?:,,c.::
:*?:++-::
{
	send,{ctrl down}
	send,a
	send,c
	send,{ctrl up}


	winget,temp2,id,a

	temp := clipboard
	sleep,10
	run,C:\Windows\System32\calc1.exe
	WinWait, 電卓, 
IfWinNotActive, 電卓, , WinActivate, 電卓, 
WinWaitActive, 電卓, 

	sleep,200
	send,^v
	sleep,100
	send,{enter}
	sleep,100
	send,^c
	temp2 := clipboard
	sleep,100
	send,!{f4}
	
	winactivate,%temp2%,id
	sleep,100
	send,{right}
	send,{space}
	send,=
	send,{space}
	send,^v
	return
}

:*?:,,tmh.::
{

clipboard_backup = %ClipboardAll%
clipboard=

send,^a
send,^c

clipwait,10

temp := clipboard

stringgetpos,tempkoron,temp,:

stringmid,temp2,temp,tempkoron-1,2

stringreplace,temp2,temp2,:,
temp3 := temp2 * 60

stringreplace,temp,temp,%temp2%,%temp3%

send,^a
clipboard=
clipboard=%temp%
clipwait,10

send,^v
sleep,100
	timmerset()
	return
}

:*?:,,tm.::
{
	timmerset()
	return
}

:*?:,,t.::
{
	send,{ctrl down}
	send,a
	send,c
	
	send,{del}

	send,d
	send,{ctrl up}
	sleep,100

	StringReplace, clipboard, clipboard, `,`, ,

	stringreplace, clipboard, clipboard, t,

	
	run,C:\Program Files (x86)\focus booster\focus booster.exe
	
WinWait, Focus Booster, 
IfWinNotActive, Focus Booster, , WinActivate, Focus Booster, 
WinWaitActive, Focus Booster, 

winmove,Focus Booster,,1180,21,727,88

mouseclick,left,707,26,,0

WinWait, ahk_class ApolloRuntimeContentWindow , ,,Focus Booster


sleep,150
mouseclick,left,19,68,,0

sleep,150

send,^v
winactivate

sleep,150
mouseclick,left,41,336,,0

sleep,50
WinWaitActive, Focus Booster

mouseclick,left,119,11,,0

sleep,80
mouseclick,left,113,44,,0

return
}



:*:,,shotdown::
:*:,,shatdown::
{
	send,^d
	run,C:\Users\stroketip\Desktop\ショートカット\windown_ver7.0\Windows自動シャットダウンソフト.exe
	winwait,Windows自動シャットダウンソフト v7.0
	sleep,300
	mouseclick,left,167,104,,0
	sleep,100
	send,{tab}
	send,{vk1Dsc07B}
	return
}
/*
:*:,,g.::
{
	clipboard_backup = %ClipboardAll%

	send,^a
	clipboard =
	send,^c
	clipwait,10
	sleep,300
	send,^d
	
	temp1 := clipboard
	
	stringreplace ,temp1,temp1,%a_space%,+
	stringreplace ,temp1,temp1,　,+
	run,"https://www.google.co.jp/search?q=%temp1%"
	Clipboard := clipboard_backup
	return
	
}
*/

:*?:,,e.::
{
	send,^a
	send,^c
	clipwait,10
	sleep,300
	send,^d
	
	send,^+f
	winwait,Evernote
	sleep,750
	
	send,^v
	
	
	return
}

:*:,,edittextshot::
:*:,,edittextset::
{
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot.ahk
	return
}


:*:,,textset::
{
	send,^a
	send,^c
	clipwait,10
	
	InputBox, temp2 ,set title,,,189,130,,,,,text shooting
	
	if (errorlevel = 1)
	{
		return
	}
	
	fileappend,%clipboard%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\%temp2%.txt
	
	FileRead, textformat, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\textshot format.txt
	
	stringreplace textformat,textformat,okikaeru,%temp2%,all
	
	fileappend, %textformat%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot.ahk
	
	return
}

:*:,,gifset::
{
	
	InputBox, temp2 ,set title,,,189,130,,,,,gif show

	run,C:\Program Files\irfanview\i_view64.exe /clippaste /convert=C:\Users\stroketip\Desktop\ショートカット\ahk\library\gifset\photo\%temp2%.gif,hidden

	
	if (errorlevel = 1)
	{
		return
	}
	
	sleep,200
	FileRead, gifsetformat, C:\Users\stroketip\Desktop\ショートカット\ahk\library\gifset\gif format.txt
	
	stringreplace textformat,gifsetformat,okikaeru,%temp2%,all
	
	fileappend, %textformat%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\gifset\gifshot.ahk
	
	return
}

:*:,,anigifset::
{
	send,^a
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,^c
	clipwait,10
	
	temp := clipboard
	
	splitpath,temp,filename

	msgbox,%temp%
	
	filecopy,%temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\gifset\photo\%filename%

	return
}

:*:,,textshot::
{
	run, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\
	return
}

:*:,,note;0::
{
	loop,100
	{
		ifnotexist C:\Users\stroketip\Desktop\ショートカット\ahk\library\znote\znote %a_year%-%a_mm%-%a_dd% %a_index%.txt
		{
			tempnumber = %a_index%
			tempnumber -= 1
			send,number= %tempnumber%
		
		if tempnumber < 10
		{
				Input, UserInput, T4 L1
				if ErrorLevel = Max
				{
						FileRead, temp5, C:\Users\stroketip\Desktop\ショートカット\ahk\library\znote\znote %a_year%-%a_mm%-%a_dd% %UserInput%.txt
					
				}
		}
		if tempnumber >= 10
		{
			Input, UserInput, T4 L2, {enter}
				if ErrorLevel = Max
				{
					FileRead, temp5, C:\Users\stroketip\Desktop\ショートカット\ahk\library\znote\znote %a_year%-%a_mm%-%a_dd% %UserInput%.txt
					
				}
				else
				{
				if ErrorLevel = Timeout
				{
					FileRead, temp5, C:\Users\stroketip\Desktop\ショートカット\ahk\library\znote\znote %a_year%-%a_mm%-%a_dd% %UserInput%.txt
				}
				if Errorlevel = EndKey:enter
				{
					;stringreplace,userinput,userinput,`r
					FileRead, temp5, C:\Users\stroketip\Desktop\ショートカット\ahk\library\znote\znote %a_year%-%a_mm%-%a_dd% %UserInput%.txt
				}
				
				}
		}
	

	clipboard := temp5
	
	clipwait,10
	break
	}
	
	}
	
	send,^d
	run,%clipboard%
	return
	
}
	

:*:,,monthtaskchute::
:*:,,taskchutemonthset::
:*:,,taskchutesetmonth::
{
{

	Loop, 31


	{

		Count += 1

		if (Count < 10)
			
			{
				tit2 := "0"count
				
			}
		else
			{
				tit2 := count
			}
			
	





	run, C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%tit2%.xlsm

;	wingettitle

	sleep 4200
;	winwait, タスクシュート	



	wingettitle, str, a
	
;	stringmid, str,str,32, 5
;	excel2010はこれでいけた

;	stringmid, str,str,22,5
;	excel2013 表示がsm -　担ったので、修正

	stringmid, str,str,14,5
	send, ^g
	sleep ,500
	
	send,{vk1Dsc07B}
	send, b5
	send, {enter}

	sleep,200

	send, %str%
	sleep,200
	send, {enter}



	sleep,200
	send,^g
	sleep,300

	send,{vk1Dsc07B}
	send,i8
	send,{enter}

	sleep,300



	

	send, ^s

	sleep, 200

	send, !{F4}

	sleep, 500


}


}
return

}

:*:,,notemaster::
:*:,,syncnote::
:*:,,synknote::
{
	send,^d
	run,C:\Users\stroketip\Dropbox\アプリ\NoteMaster\
	return
}


:*?:,,.::

{
clipboard_backup = %ClipboardAll%
clipboard=

	clipboard =
	send,^c
	clipwait,10
	
	
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
	
}


:*:..::
{
	send,`,
	return
}

:*:,,smartgui::
{
	send,^d
	run,C:\Users\stroketip\Desktop\ショートカット\smartgui\SmartGUI.exe
	return
}

:*:,,helpahk::
:*:,,ahkhelp::
{
	sleep,5
	send,^d
	run,https://sites.google.com/site/autohotkeyjp/reference/commands/index_flow
	winwait,実行制御 - AutoHotkeyJp - Google Chrome
	winactivate,実行制御 - AutoHotkeyJp - Google Chrome
	
	sleep,1500
	WinGetPos , X, Y, Width, Height, a
	mousemove width-239,130
	mouseclick,left
	return
}


:*:,,tasktq::
:*:,,tasktws::
{
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\stroketiptweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,9
		if (a = "stroketip")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd)
			{
				trigger = 1
			}
		}
		
	}
	
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\neumantweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,10
		if (a = "neuman_zig")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd)
			{
				trigger = 1
			}
		}

	loop,1000
	{

		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		

		stringtrimright task,line,6
		stringright linetime,line,5
		stringleft,judge,line,2
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimleft,task,task,2
			}
		*/
			if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimleft,task,task,2
			}
			
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
			{
				endflag = 1
				stringtrimleft,task,task,2
			}
			
			stringright,judge,task,2
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimright,task,task,2
			}
		*/	
			if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimright,task,task,2
			}
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
			{
				endflag = 1
				stringtrimright,task,task,2
			}
			
			
			
			if(startflag = 0) & (endflag = 0)
			{
			temp2 = %task% %linetime%
			clipboard := temp2
			clipwait,10
			send,^v
			}
			

			
			if(startflag = 1)
			{
				clipboard := task
				send,{space}
				clipwait,10
				send,^v

				clipboard := linetime
				clipwait,10
				
				send,^v
				send,start
			}
			
			if(endflag = 1)
			{
				clipboard := task
				clipwait,10
				send,^v
				send,{space}

				clipboard := linetime
				clipwait,10
				
				send,^v
				send,end
			}
			send,{enter}
			
			startflag = 0
			endflag = 0
			}
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
return
}
}


:*:,,tasktw0::
{
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\stroketiptweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,9
		if (a = "stroketip")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd)
			{
				trigger = 1
			}
		}
		
	}
	
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\neumantweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,10
		if (a = "neuman_zig")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd)
			{
				trigger = 1
			}
		}
		
	}	

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinActivate
	}
		else
	{
		run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
		
		winwait,タスクシュート　%a_year%-%a_mm%-%a_dd%
	}
	
	sleep,200
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	
	send,{vk1Dsc07B}
	send,i100
	send,{enter}
	
	sleep,200
	send,^{up}
	send,{down}


	loop,1000
	{

		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		

		stringtrimright task,line,6
		stringright linetime,line,5
		stringleft,judge,line,2
		
		startflag = 0
		endflag = 0
		
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimleft,task,task,2
			}
		*/
			if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimleft,task,task,2
			}
			
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
			{
				endflag = 1
				stringtrimleft,task,task,2
			}
			
			stringright,judge,task,2
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimright,task,task,2
			}
		*/	
			if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimright,task,task,2
			}
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
			{
				endflag = 1
				stringtrimright,task,task,2
			}
			
			
			
			if(startflag = 0) & (endflag = 0)
			{
			clipboard = %task% %linetime%
			clipwait,10
			send,^v
			}
			

			
			if(startflag = 1)
			{
				clipboard := task
				clipwait,10
				send,^v
				send,{tab 3}
				clipboard := linetime
				clipwait,10
				
				send,^v
				send,+{tab 3}
				sleep,50
			}
			
			if(endflag = 1)
			{
				clipboard := task
				clipwait,10
				send,^v
				send,{tab 4}
				clipboard := linetime
				clipwait,10
				
				send,^v
				send,+{tab}
				sleep,400
				send,+{tab 3}
				sleep,200
			}
			send,{enter}
			
			startflag = 0
			endflag = 0
			}
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
return
}

:*:,,tasktw1::
:*:,,tasktw-1::
:*:,,tasktw;1::
{
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\stroketiptweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,9
		if (a = "stroketip")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd-1)
			{
				trigger = 1
			}
		}
		
	}
	
	Loop, 1000
	{
		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\neumantweet.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		
		if (trigger = 1)
		{
			FileAppend , %line% %linehour%:%lineminutes%`n,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
			trigger = 0
		}
		
		stringleft,a,line,10
		if (a = "neuman_zig")
		{
			stringgetpos,num,line,年
			stringgetpos,num2,line,月
			stringgetpos,num3,line,日
			stringgetpos,num4,line,)
			stringgetpos,num5,line,時
			stringgetpos,num6,line,分

			stringmid,lineyear,line,num-3,4
			
			stringmid,linemonth,line,num+2,num2-num-1
			stringlen,long,linemonth
				if (long = 1)
				{
					linemonth = 0%linemonth%
				}
			
			stringmid,lineday,line,num2+2,num3-num2-1
			stringlen,long,lineday
				if (long = 1)
				{
					lineday = 0%lineday%
				}
			
			stringmid,linehour,line,num4+2,num5-num4-1
			stringlen,long,linehour
				if (long = 1)
				{
					linehour = 0%linehour%
				}
			
			stringmid,lineminutes,line,num5+2,num6-num5-1
			stringlen,long,lineminutes
				if (long = 1)
				{
					lineminutes = 0%lineminutes%
				}
		
	
			if (lineyear = a_year) & (linemonth = a_mm) & (lineday = a_dd-1)
			{
				trigger = 1
			}
		}
		
	}	

	day := a_dd-1
		if day < 10 
	{
		day = 0%day%
	}


	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
		else
	{
		run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
		
		winwait,タスクシュート　%a_year%-%a_mm%-%day%
	}
	
	sleep,200
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	
	send,{vk1Dsc07B}
	send,i100
	send,{enter}
	
	sleep,200
	send,^{up}
	send,{down}


	loop,1000
	{

		FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt, %a_index%
		if Errorlevel <> 0
		{
			break
		}
		

		stringtrimright task,line,6
		stringright linetime,line,5
		stringleft,judge,line,2
		
		startflag = 0
		endflag = 0
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimleft,task,task,2
			}
		*/
			if(judge = "すた") or(judge = "いま") or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimleft,task,task,2
			}
			
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう")
			{
				endflag = 1
				stringtrimleft,task,task,2
			}
			
			stringright,judge,task,2
		/*
			if(judge = "つぎ") or(judge = "あす")
			{
				stickiesflag = 1
				stringtrimright,task,task,2
			}
		*/	
			if(judge = "すた")  or (judge = "かー") or (judge = "！？") or (judge = "？！")
			{
				startflag = 1
				stringtrimright,task,task,2
			}
			
			if(judge = "えん") or (judge = "ーえ") or (judge = "おわ") or (judge = "！！") or (judge = "とう") or (judge = "いま")
			{
				endflag = 1
				stringtrimright,task,task,2
			}
			
			
			
			if(startflag = 0) & (endflag = 0)
			{
			clipboard = %task% %linetime%
			clipwait,10
			send,^v
			}
			

			
			if(startflag = 1)
			{
				clipboard := task
				clipwait,10
				send,^v
				send,{tab 3}
				clipboard := linetime
				clipwait,10
				
				send,^v
				send,+{tab 3}
				sleep,50
			}
			
			if(endflag = 1)
			{
				clipboard := task
				clipwait,10
				send,^v
				send,{tab 4}
				clipboard := linetime
				clipwait,10
				
				send,^v
				send,+{tab}
				sleep,400
				send,+{tab 3}
				sleep,200
			}
			send,{enter}
			
			startflag = 0
			endflag = 0
			}
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter2.txt
return	
}


:*:,,tasktr::
:*:,,tasktwe::
:*:,,tasktwr::

{
	send,^d
	run,C:\Users\stroketip\Desktop\ショートカット\bat_exe\stroketiptweet.exe
	run,C:\Users\stroketip\Desktop\ショートカット\bat_exe\neumanzigtweet.exe
	sleep,1500
	
	
	return
}

:*:,,edittaskset::
{
	send,^d
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\ahk\library\treememo taskset 2013-04-26.ahk
	return
}

:*:,,edittaskfold::
{
	send,^d
	run,C:\Users\stroketip\Desktop\ショートカット\ahk\library\taskset\
	return
}


:*:,,editgazou::
{
	send,^d
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\ahk\library\hyouji 2013-04-11.ahk
	return
}


>^+g::
{

	ifwinnotexist,Course Vector Google Tasks
	{
			run,C:\Program Files (x86)\Course Vector\Google Tasks\Google Tasks.exe
			winwaitactive,Course Vector Google Tasks
	}
	
	send,{blind}{ctrl up}
	sleep,100
	WinWait, ASticky
	IfWinNotActive, ASticky, , WinActivate, ASticky, 
WinWaitActive,ASticky, 
	Sleep, 100
	Send, {vk1Dsc07B}^a
	Send,  ^c
	WinWait, Course Vector Google Tasks, 
	IfWinNotActive, Course Vector Google Tasks, , WinActivate, Course Vector Google Tasks, 
	WinWaitActive, Course Vector Google Tasks, 
	MouseClick, left,  219,  17
	Sleep, 100
	MouseClick, left,  58,  44
	Sleep, 100
	WinWait, JavaScript, 
	IfWinNotActive, JavaScript, , WinActivate, JavaScript, 
	WinWaitActive, JavaScript, 
	MouseClick, left,  181,  92
	Sleep, 100
	Send,  29=0{BACKSPACE}{BACKSPACE}%a_year%-%a_mon%-%a_dd%{ENTER}
	WinWait, Course Vector Google Tasks, 
	IfWinNotActive, Course Vector Google Tasks, , WinActivate, Course Vector Goo	gle Tasks, 
	WinWaitActive, Course Vector Google Tasks, 
	Send, {CTRLDOWN}v{CTRLUP}
return

}

>^g::
{

	ifwinnotexist,Course Vector Google Tasks
	{
			run,C:\Program Files (x86)\Course Vector\Google Tasks\Google Tasks.exe
			winwaitactive,Course Vector Google Tasks
	}
	
	send,{blind}{ctrl up}

	Sleep, 100
	Send, {vk1Dsc07B}^a
	Send,  ^c

	WinActivate, Course Vector Google Tasks, 
	
	sleep,100
	mouseclick,left,497,592,,0,
	Send, {CTRLDOWN}v{CTRLUP}
return

}


:*:,,clipstock1::
:*:,,stock1::

{
	send,^d
	goto clipstock1
	return
}

:*:,,clipstock2::
:*:,,stock2::

{
	send,^d
	goto clipstock2
	return
}

:*:,,clipstock3::
:*:,,stock3::

{
	send,^d
	goto clipstock3
	return
}

:*:,,clipstock4::
:*:,,stock4::

{
	send,^d
	goto clipstock4
	return
}

:*:,,clipstock5::
:*:,,stock5::

{
	send,^d
	goto clipstock5
	return
}

:*:,,clipstock6::
:*:,,stock6::

{
	send,^d
	goto clipstock6
	return
}

:*:,,clipstock7::
:*:,,stock7::

{
	send,^d
	goto clipstock7
	return
}

:*:,,clipstock8::
:*:,,stock8::

{
	send,^d
	goto clipstock8
	return
}

:*:,,clipstock9::
:*:,,stock9::

{
	send,^d
	goto clipstock9
	return
}

:*:,,clipstock0::
:*:,,stock0::

{
	send,^d
	goto clipstock0
	return
}

:*:,,tasklog::
{
	send,^d
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt
	return
}

:*:,,clipsave::
:*:,,clipfan::
{
	sleep,50
	send,^d
	run,C:\Program Files\irfanview\i_view64.exe /clippaste /convert=C:\Users\stroketip\Desktop\clip %a_now%.jpg

	return
}

>^+t::
{
	send,{blind}{ctrl up}
	clipboard_backup = %ClipboardAll%

	clipboard =
	send,^a
	send,^c
	
	clipwait,10
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt
	
	temp := clipboard
	
	FileAppend , %temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt
	sleep,50
	run,C:\twnu\twtcnsl.exe /txt C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt,,hide
	
	Clipboard := clipboard_backup
	
	ToolTip , stroketip hidden, 1745, 935, 11
	sleep,1500
	tooltip ,,,,11
	send,^d
	
	send,{lshift}
	send,{lctrl}
	return
}

<^+r::
{
		send,{blind}{ctrl up}
	clipboard_backup = %ClipboardAll%


	send,^a
	send,^c
	
	clipwait,10
	
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt
	
	temp := clipboard
	
	FileAppend , %temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\twitter.txt
	sleep,50
	run,C:\Users\stroketip\Desktop\ショートカット\bat_exe\twitter.exe
	
	Clipboard := clipboard_backup
	
	ToolTip , neuman_zig 花屋, 1745, 1035, 11
	sleep,500
	tooltip ,,,,11	
	
	
	send,{lshift}
	send,{lctrl}
	return

}


:*:,,key2open::
:*:,,ahk2open::
{
	send,^d
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\ahk\library\ahk2.ahk
	return
}


:*:,,ahkopen::
{
	send,^d
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\ショートカット\schedule watcher input.ahk
	return
}

:*:,,ahkbackup::
{
	send,^d
	filecopy C:\Users\stroketip\Desktop\ショートカット\schedule watcher input.ahk,C:\Users\stroketip\Dropbox\d データ保存\ahk backup\
	return
}



:*:,,output::
:*:,,outset::
:*:,,set::
{
	clipboard_backup = %ClipboardAll%

	sleep,100
	send,{ctrl down}
	send,a
	send,c
	send,{ctrl up}
	clipwait,10
	sleep,150
	
	temp := clipboard



FoundPos := RegExMatch(temp, "clickimage\(a\)")
if (FoundPos=0)
{
	;検索する言葉が無かった場合
	FileAppend , %temp%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\hyouji 2013-04-11.ahk
	
	Clipboard := clipboard_backup
	
	reload
	return
}
else
{
	;あった場合
	loop,C:\Users\stroketip\Desktop\ショートカット\ahk\library\clickimage\*.*
{
	loopN := a_index
}

loopN = 00000%loopn%

	filename := temp
	stringlen,foundlen,filename

	FoundPosL := RegExMatch(filename, "a=")
	stringtrimleft,filename,filename,FoundPosL-1+2	

	foundpos := foundlen - FoundPos

	stringtrimright,filename,filename,FoundPos+4

stringright,loopN,loopN,5
;	msgbox,%filename%
	
filecopy,%filename%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\clickimage\clickimage%loopN%.*

	stringreplace,temp,temp,%filename%,C:\Users\stroketip\Desktop\ショートカット\ahk\library\clickimage\clickimage%loopN%.png

sleep,100

		FileAppend , %temp%`r, C:\Users\stroketip\Desktop\ショートカット\ahk\library\imageclick.ahk
	
	Clipboard := clipboard_backup
	
	reload
	return
}
return
	


}

~^up::
{
	if (inputflag = 1)
	{
		send,{up 6}
		send,{right 5}
		send,+{right 5}
		inputflag = 0
		return
	}
		if (inputflag = 2)
	{
		send,{up 6}
		send,+{right 11}
		inputflag = 0
		return
	}
	return
}

^down::
{
	if(inputflag =1 or 2)
	{
		send,{home}
		send,{right 5}
		send,+{end}
		return
	}
}

/*
^r::
{
*/	

:*:,,clickset::
:*:,,clickimage::
{
	send,{ctrl down}
	send,a
	send,{del}
	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\clickimage\clickset.txt
	clipboard := temp

	sleep,100
	send,v
	sleep,100
	send,w
	send,{ctrl up}
	
	send,{up 4}
	send,{end}
	send,+{home}
	send,+{right 3}
	
	inputflag = 2
	
	Clipboard := clipboard_backup
	return
}


:*:,,input::
:*:,,ahkset::
{
	send,{ctrl down}
	send,a
	send,{del}
	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\hyouji 2013-04-11.txt
	clipboard := temp

	sleep,100
	send,v
	sleep,100
	send,w
	send,{ctrl up}
	
	send,{up 2}
	send,{left 23}
	send,+{left 16}
	
	inputflag = 1
	
	Clipboard := clipboard_backup
	return
}


:*:,,exeka.::
{
	send,^a
	send,{del}
	send,^d
	sleep,50
	run,C:\Program Files\irfanview\i_view64.exe C:\Users\stroketip\Documents\my project\exe化　2013-04-06.png /clipcopy /hide=7
	return
	 }

>^+,::
<^+,::
{
	clipboard_backup = %ClipboardAll%
	
	send,^c
	clipwait,10
	
	ifwinexist Schedule Watcher
	{
		winactivate,Schedule Watcher
		winwait,Schedule Watcher
	}
	else
	{
		run,C:\Users\stroketip\Dropbox\d データ保存\Schwatch\Schwatch.exe
		winwait,Schedule Watcher
	}
	
	send,{vk1Dsc07B}
	send,g
	send,{enter}
	sleep,50
	send,ea
	sleep,50
	send,{tab 3}
	
	send,^v
	sleep,50
	
	send,{tab 9}
	
	send,^v
	
	Clipboard := clipboard_backup
	return
	
}


+^z::
{
	send,^!m
	send,{blind}{ctrl up}
WinWait, スティッキーを管理する, 
IfWinNotActive, スティッキーを管理する, , WinActivate, スティッキーを管理する, 
WinWaitActive, スティッキーを管理する, 
sleep,100

	WinMove, a, , , , 574, 331
	mouseclick,left,62,127,,0
	send,{tab}
	send,{pgup}
	MouseGetPos, x0, y0

	sleep,100
	mouseclick,left,385,70,,0
	sleep,100
	mouseclick,left,481,70,,0
	sleep,100
	send,{end}
	sleep,100
	mouseclick,right,385,193,,0
	sleep,100
	send,{down}
	send,{enter}
;	mouseclick,right,254,89,,0
;	send,{down}
;	send,{enter}
	
	sleep,100
	send,!{f4}
	
	MouseMove, x0,y0
	return
}

+^x::
{
	foldtemp = C:\Users\stroketip\Desktop\ショートカット\D-SendMail_117 (1)\D-SendMail.exe
	dsendx(foldtemp)
	return
}

	
	

#numpad1::
{
	send,!1
	return
}

#numpad2::
{
	send,!2
	return
}

#numpad3::
{
	send,!3
	return
}

#numpad4::
{
	send,!4
	return
}

#numpad5::
{
	send,!5
	return
}

#numpad6::
{
	send,!6
	return
}

#numpad7::
{
	send,!7
	return
}

#numpad8::
{
	send,!8
	return
}

#numpad9::
{
	send,!9
	return
}
#numpad0::
{
	send,!0
	return
}

f1::
{
	taskchutetoday()
 return

}


+f1::
{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



^f1::

{
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm /dde
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm /dde
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm /dde
	}
 return

}

pause::
	{
	send,^t
	return
	}

^appskey::

{

	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
}


$appskey::

{
	IfWinExist - Evernote
	
	{
	clipboard_backup = %ClipboardAll%
	
	sleep,100
	send,{ctrl down}
	send,a
	send,c
	clipwait,10
	
	tempa =
	tempa := clipboard
	
	if (tempa = "" )
	{
		send,^d
		Clipboard := clipboard_backup
		return
	}
	
	clipwait,10
	WinGet, active_id, ID, A
	sleep,100
	send,^+{f4}
	send,{ctrl up}

	sleep,100
;	msgbox,%active_id%
	winactivate,ahk_id %active_id%
	sleep,300
	send,^d
	
	

	return

	}
	else
	{
;	msgbox,else
	Run C:\Program Files (x86)\Evernote\Evernote\Evernote.exe
	WinWait - Evernote
	WinActivate
	}

	return

}


#right::
{
	wingetpos,x,y

	if x = 2700
	{
		winmove 2750,y
		send,!4
		return
	}

	winmove 2700,y
	return

	

}
	#left::
	{
		wingetpos,x,y
		winmove 700,y
		return
	}

#up::
{
	wingetpos,x,y
	winmove x,(y-150)
	return
}

#down::
{
	wingetpos,x,y
	winmove x,(y+150)
	return
}

+#right::
{
	wingetpos,x,y
	winmove (x+250),y
	return
}

+#left::
{
	wingetpos,x,y
	winmove (x-250),y
	return
}

+#up::
{
	wingetpos,x,y
	winmove x,(y-50)
	return
}

+#down::
{
	wingetpos,x,y
	winmove x,(y+50)
	return
}




	
;:--  OS          Windows

;--;一太郎
#ifwinactive ahk_class js:TARO27

f12::
{
	send,^2
	return
}



;--;花子
#ifwinactive ahk_class js:HANAKO24
f12::
{
	send,^2
	return
}

;--;JustPdf

#ifwinactive JUST PDF 3 [編集]

f12::
{
	send,{alt}
	sleep,100
	send,f
	sleep,100
	send,a
	return
}

;--;読み取り革命

#ifwinactive 読取革命
<^+b::
{
	mouseclick,right
	sleep,100
	send,a
	sleep,100
	send,{enter}
	sleep,100
	send,b
	sleep,100
	send,{enter}
	return
}

<^+t::
{
	mouseclick,right
	sleep,100
	send,a
	sleep,100
	send,{enter}
	sleep,100
	send,p
	sleep,100
	send,{enter}
	return
}	

;--;スタートメニュー
#ifwinactive スタート メニュー

~z::
{
	zflag = 1
	return
}


#ifwinactive 検索ウィンドウ

:*:xcv::

{
	if (zflag = 1)
	{
	send,{bs}
	send,{vk1Dsc07B}
	send,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　
	send,{vk1Dsc07B}
	zflag =
	}
	return
}



;--;スタートメニュー
;start

#ifwinactive スタート メニュー



appskey::

	{
	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
	}

^appskey::
	{
	send,{vk1Dsc07b}
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
	}

+appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

^+appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return	
}

!appskey::
{
	send,{vk1Dsc07b}
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

;--;ファイル名を指定して実行
#ifwinactive ファイル名を指定して実行
:*:,,memori::
:*:,,memory::
{
	send,%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
	return
}
	
	

;--;ウィンドウズ標準フォルダ
#ifwinactive ahk_class CabinetWClass

<^+rbutton::
{
	clickpath()
	return
}
^rbutton::
{
	pdfopen()
	return
}

vk1Dsc07B & rbutton::
{

	openclickpath()
	return

}

appskey::
{
	appskeyopen()
	return
}

#ifwinactive Orchis

#ifwinactive 出力する設定ファイルの指定

<^+o::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard=C:\Users\stroketip\Desktop\ショートカット\orchis\orchis.ocs
	clipwait,10
	
	send,^v
	send,{left 4}
	send,+{left 6}
	
	Clipboard := clipboard_backup
	return
}

;--; 自動シャットダウンソフト
#ifwinactive Windows自動シャットダウンソフト v7.0

^numpadenter::

{
	mouseclick,left,66,157,,1
	return
}

;--;自動ウィンドウズシャットダウンソフト

#ifwinactive ahk_class hspwnd0

enter::
numpadenter::
{
	MouseGetPos, x0, y0
	
	MouseMove, 75,158
	MouseClick, left
	MouseMove, x0, y0
	
	return
}


;--;ファイルを開く
#ifwinactive ahk_class #32770 ;ファイルを開く

:*:,,muhen::
{
	send,vk1Dsc07B
	return
}

<^numpadins::

{
	dayfolder(0)
	return
}

<^numpadend::

{
	dayfolder(-1)
return
}

<^numpaddown::
{
	dayfolder(-2)
return
}
<^numpadpgdn::
{
	dayfolder(-3)
return
}

<^numpadleft::
{
	dayfolder(-4)
	return
}

<^numpadclear::
{
	dayfolder(-5)
	return
}

<^numpadright::
{
	dayfolder(-6)
	return
}

<^numpadhome::
{
	dayfolder(-7)
	return
}

<^numpadup::
{
	dayfolder(-8)
	return
}

<^numpadpgup::
{
	dayfolder(-9)
	return
}

^+u::
{
	folderopen("C:\Users\stroketip\Desktop\ショートカット\uwsc48e\library\")
	return
}
/*
^+k::
{
	folderopen("C:\Users\stroketip\Desktop\ショートカット\")
	return
}
*/
>^+d::
{
	folderopen("C:\Users\stroketip\Desktop\")
	return
}

>^+e::
{
	folderopen("C:\Users\stroketip\Dropbox\e-Mart\")
	return
}

<^+d::
{
	folderopen("C:\Users\stroketip\Dropbox\")
	return
}


^+s::
^+a::
{
	folderopen("C:\Users\stroketip\Dropbox\")
	return
}

^+r::
{
	folderopen("C:\Users\stroketip\FenrirFS Storage\個人用.profile\files\")
	return
}

^+p::
{
	folderopen("C:\Users\stroketip\Pictures\")
	return
}


^+m::
{
	folderopen("C:\Users\stroketip\Music\")
	return
}

^+z::
{
	folderopen("C:\Users\stroketip\Documents\my project\")
	return
}
<^+o::
{
	folderopen("C:\Users\stroketip\SkyDrive\")
	return
}

^+x::

{
	folderopen("C:\Users\stroketip\Dropbox\xls\")
	return
}

:*:,,icon::
{
	folderopen("C:\Users\stroketip\Pictures\icon\")
	return
}



;--;名前をつけて保存
#ifwinactive Save File
#ifwinactive 名前を付けて保存

hozon:



<^numpadins::

{
	dayfolder(0)
	return
}

<^numpadend::

{
	dayfolder(-1)
	return
}

<^numpaddown::

{
	dayfolder(-2)
	return
}
<^numpadpgdn::

{
	dayfolder(-3)
	return
}

<^numpadleft::
{
	dayfolder(-4)
	return
}

<^numpadclear::
{
	dayfolder(-5)
	return
}

<^numpadright::
{
	dayfolder(-6)
	return
}

<^numpadhome::
{
	dayfolder(-7)
	return
}

<^numpadup::
{
	dayfolder(-8)
	return
}

<^numpadpgup::
{
	dayfolder(-9)
	return
}

<^+rbutton::
{
	clickpath()
	return
}
^rbutton::
{
	pdfopen()
	return
}

vk1Dsc07B & rbutton::
{

	openclickpath()
	return

}

:*:,,onedrive::
{
	folderopen("C:\Users\stroketip\SkyDrive\")
	return
}

^+u::
{
	folderopen("C:\Users\stroketip\Desktop\ショートカット\uwsc48e\library\")
	return
}

>^+t::
{
	folderopen("C:\Users\stroketip\Dropbox\d データ保存\txt\")
	return
}

>^n::

{
	folderopen("C:\Users\stroketip\Dropbox\アプリ\NoteMaster\")
	return
}	

appskey::

	{
	send,{vk1Dsc07B}
	send, %A_year%-%a_mm%-%a_dd%
	return
	}

+appskey::
	{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	send,タスクシュート 
	send,{enter}
	send,{space}
	send,{vk1Dsc07B}
	send,%A_year%-%a_mm%-%day%
;	send,タスクシュート　%A_year%-%a_mm%-%a_dd%
	return
	}

^appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

^+appskey::
{
	send,{vk1Dsc07b}
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return	
}

!appskey::
{
	send,{vk1Dsc07b}
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}
	send, %A_year%-%a_mm%-%day%
	return
}

^+.::
{
	mousemove, a_caretx,a_carety,0
	mouseclick,left
	mouseclick,left
	send,{right}
	send,.
	mousemove a_caretx+100,a_carety+70,0

	return
}

^+,::
{
	mousemove, a_caretx,a_carety,0
	mouseclick,left
	mouseclick,left
	send,{right}

	mousemove a_caretx+100,a_carety+70,0

	return
}


>^+k::
{
	folderopen("C:\Users\stroketip\Desktop\ショートカット\ahk\")
	return
}	

>^+d::
{
	folderopen("C:\Users\stroketip\Desktop\")
	return
}

<^+p::
{
	folderopen("C:\Users\stroketip\Pictures\")
	return
}

^+a::
{
	clipboard_backup = %ClipboardAll%

	send,^a
	send,^c
	clipwait,10

	send,C:\Users\stroketip\Dropbox\
	send,{enter}

	send,^v
	Clipboard := clipboard_backup
	return
}

^+r::
{
	folderopen("C:\Users\stroketip\FenrirFS Storage\個人用.profile\files\")
	return
}

^+p::
{
	folderopen("C:\Users\stroketip\Pictures\")
	return
}


^+m::
{
	folderopen("C:\Users\stroketip\Music\")
	return
}

^+z::
{
	folderopen("C:\Users\stroketip\Documents\my project\")
	return
}

^+x::

{
	folderopen("C:\Users\stroketip\Dropbox\xls\")
	return
}


;:--  Office      Microsoft

;--;Shuriken
#ifwinactive Shuriken 2010


vk1Dsc07B & space::
{

	if (orchis ="shuriken")
	{
		winactivate,ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
		sleep,50
		MouseGetPos, x0, y0
		
		MouseMove, 11,9,0
		MouseClick, left
		MouseMove, x0, y0
		orchis = 
		sleep,100
		mouseclick,left
		return
	}
	global orchis = "shuriken"
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "shuriken" -g 1123 930 -s
	return
}

;--;PowerPoint パワーポイント

#ifwinactive ahk_class PPTFrameClass

^n::
{
	send,{blind}{ctrl up}
	
	send,{alt}
	send,4
	
	sleep,30
	
	send,{down 2}
	send,{enter}
	send,{ctrl down}{blind}
	return
}

<^+t::
{
	send,{blind}{ctrl up}{shift up}
	send,{alt}
	send,n
	sleep,20
	send,x
	sleep,20
	send,h
	send,{blind}
	return
}

<^+y::
{
	send,{blind}{ctrl up}{shift up}
	send,{alt}
	send,h
	sleep,20
	send,sh
	sleep,20
	send,{down 2}{right 4}
	sleep,20
	send,{enter}
	send,{blind}
	return
}

<^+a::
{
	send,{blind}{ctrl up}{shift up}
	if (a_priorhotkey = "<^+a")
	{

		gosub,%prefhave%
		send,{blind}
		return
	}
	else
	
	gosub,%a_priorhotkey%
	prefhave = %a_priorhotkey%
	
	send,{blind}
	return

}
;--; Microsoft Outlook

#ifwinactive - Outlook

^i::
{
	send,^n
	return
}


;--; エクスプローラー
#ifwinactive ahk_class CabinetWClass

#appskey::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	send,^c
	clipwait,10
	
	temp := clipboard
	clipboard := temp
	
	send,!{f4}
	
	run,C:\Program Files\HmFilerClassic\HmFilerClassic.exe %temp%
	
	Clipboard := clipboard_backup
	return
}

<^+numpadadd::
{
	run,"C:\Users\stroketip\Desktop\ショートカット\ahk\library\dayfolder\dayfolderopeninput.ahk"
	return
}

<^numpadins::

{
	dayfolderopen(0)
	return
}

<^numpadend::

{
	dayfolderopen(-1)
	return
}

<^numpaddown::

{
	dayfolderopen(-2)s
	return
}
<^numpadpgdn::

{
	dayfolderopen(-3)
	return
return
}

<^numpadleft::
{
	dayfolderopen(-4)
	return
}

<^numpadclear::
{
	dayfolderopen(-5)
	return
}

<^numpadright::
{
	dayfolderopen(-6)
	return
}

<^numpadhome::
{
	dayfolderopen(-7)
	return
}

<^numpadup::
{
	dayfolderopen(-8)
	return
}

<^numpadpgup::
{
	dayfolderopen(-9)
	return
}

f1::
{

	taskchutetoday()
 return

}

vk1Dsc07B & f::
{
; 秀丸ファイラが開いている現在のフォルダをEverythingで検索 
	temp :=
	controlgettext,temp,Edit1,a
	run,C:\Program Files\Everything\Everything.exe -path %temp%
	
	return
}

~vk1Dsc07B & space::
{
	run,C:\Program Files (x86)\Orchis\orchis.exe -d "秀丸ファイラ" -g 1123 930 -s
	return
}

<^+e::
{
	run,C:\Users\stroketip\Pictures\Eye-Fi\%a_year%-%a_mm%-%a_dd%\
	return
}

^numpad1::
{
	send,{blind}
	sleep,150
	send,!vd
	return
}

^numpad2::
{
	send,{blind}
	send,!vn
	return
}
^numpad3::
{
	send,{blind}
	send,!vs
	return
}
^numpad4::
{
	send,{blind}
	send,!vh
	return
}
^numpad5::
{
	send,{blind}
	send,!vl
	return
}


>^appskey::
{
	ctrlappskeyopen()
	return
}

!appskey::
{
	altappskeyopen()
	return
}

>+appskey::
{
	shiftappskeyopen()
	return
}
	
;Journaley ;day one形式の日記;

#ifwinactive Journaley

^n::
{
	mouseclick,left,146,570
	return
}

<^d::
^w::
{
	mouseclick,left,905,357
	sleep,100
	send,{left}
	return
}

^t::
{
	mouseclick,left,905,306
	return
}

^+t::
{
	mouseclick,left,109,539
	return
}

^e::
{
	mouseclick,left,905,136
	return
}


^g::
{
	mouseclick,left,909,250
	mousemove,829,247
/*	
	input, UserInput, t2 , {enter}
	if ErrorLevel = Timeout
		return
	ifinstring, Errorlevel, EndKey:
	{
		send,{lbutton}
		return
	}
*/
	
	return
}

;--ja-naru::
#ifwinactive  - Windows Journal

^t::
{
	send,!it
	return
}

^f12::
{
	send,{alt}fa
	return
}

;--;taskchute タスクシュート

#ifwinactive タスクシュート

#include C:\Users\stroketip\Desktop\ショートカット\ahk\library\treememo taskset 2013-04-26.ahk
#ifwinactive タスクシュート

~numpaddot & numpadenter::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard=
	
	send,{f2}
	send,+{home}
	send,^x
	clipwait,10
	
	temp := clipboard
	EnvDiv, temp,60
	
	clipboard =
	clipboard := temp
	
	clipwait,10
	
	send,^v
	send,{enter}
	return
}

<^+d::
{
	send,!x
	send,sd
	sleep,100
;	send,{right 4}
	send,{up}
	return
}

>^w::
{
	send,!{f4}
	return
}
^f12::
>^s::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard =
	
	filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	
	send,^g
	sleep,300
	
	send,{vk1Dsc07B}
	send,i8:m46
	
	send,{enter}
	sleep,200
	send,^c
	
	clipwait,10
	
	temp := clipboard
	
	stringreplace,temp,temp,`n,,all
	stringreplace,temp,temp,`t,`,,all
	stringreplace,temp,temp,%a_space%,,all
	stringreplace,temp,temp,tttt,,all
	stringreplace,temp,temp,`,`,`,`,,,all
	
	stringright,temp2,temp,1
	
	loop
	{
		if(temp2="`r")
		{
			stringtrimright,temp,temp,1
			stringright,temp2,temp,1
		}
		else
		{
			break
		}
	}
	
	temp2 =
	
	temp = ------- PCから -------`r`n%temp%
	temp = %temp%`r`n----------------------`r`n
	FileAppend , %temp%, C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	
	
	temp =
	Clipboard := clipboard_backup
	
	send,^s
	
	return
}


^f11::
<^l::
{	
	task=
	tasks=
	filereadline,checkpc,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt,1

	if(checkpc ="------- PCから -------")
{	
	
	
	loop,read,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{

	stringright,locate,a_loopreadline,1
	if(locate<>"`n")
	{
		temp2=%a_loopreadline%`r`n
	}
	tasks = %tasks%%temp2%
}
	stringgetpos,locate2,tasks,----------------------
	stringtrimleft,tasks,tasks,locate2+22

}
	else
{
	fileread,temp2,*P65001 C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{

	stringright,locate,temp2,1
	if(locate<>"`n")
	{
		temp2=%temp2%`r`n
	}
	tasks = %temp2%
}
	
}


	filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	
	loop,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\*.txt
	{
	
	filename = %a_loopfilename%
	
	FileRead , task,*P65001 C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\%filename%
	stringright,locate,task,1
	
	if(locate <> "`n")
	{
		task=%task%`r`n
	}
	
	tasks = %tasks%%task%
	
	}
/*
	loop,parse,tasks,`n
	{
		ifnotinstring,a_loopfield,`,`,
		{
			taskslot =%taskslot%%a_loopfield%`n
			
		}
	}
	tasks=%taskslot%

	
	exceljump("i8:i48")
	sleep,100
	clipboard=
	send,^c
	clipwait,10
	sleep,100

	taskchutet:=clipboard


	loop,parse,taskslot,`n
	{
		taskslotfield=%a_loopfield%`n
		loop,parse,taskchutet,`n
		{
			taskchutefield=%a_loopfield%`n
			if(taskslotfield=taskchutefield)
			{
				stringreplace,tasks,tasks,%taskslotfield%,,all
			}
		}
	}
	
*/
	
				
	sleep,50
	exceljump("i100")
	sleep,200
	send,^{up}
	send,{down}
	
	send,{esc}


	taskchuteout(tasks)

	loop,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\*.txt
	{
		filename:=a_loopfilename
		filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\%filename%	
	}
	
	send,{up}

	return


}


<^,::
{
	clipboard_backup = %ClipboardAll%
	
	send,{f2}+{up}
	send,^c{end}
	send,{bs 6}
	
	send,{tab}{right 2}
	
	temp := clipboard
	
	stringright temp,temp,5
	
	clipboard := temp
	
	send,^v
	send,{enter}

	Clipboard := clipboard_backup

	return
}

<^.::
{
	clipboard_backup = %ClipboardAll%
	
	send,{f2}+{up}
	send,^c{end}
	send,{bs 6}
	
	send,{tab}{right 3}
	
	temp := clipboard
	
	stringright temp,temp,5
	
	clipboard := temp
	
	send,^v
	send,{enter}

	send,{left 4}
	Clipboard := clipboard_backup

	return
}

<^k::
{
	send,{f2}+{up}
	send,{end}
	send,{bs 6}
	return
}


:*:,,taskopen::

{
	fileselectfile,templib,,C:\Users\stroketip\Desktop\ショートカット\ahk\library\taskset\
	sleep,100
	send,+{tab 2}
	fileread,trick,%templib%
	StringReplace, trick, trick, `t,,all
	clipboard = %trick%
	send,{esc}
	send,^v

	return
}

>^+g::

{
	ifwinnotexist,Course Vector Google Tasks
	{
			run,C:\Program Files (x86)\Course Vector\Google Tasks\Google Tasks.exe
			winwaitactive,Course Vector Google Tasks
	}
	
	send,{blind}{ctrl up}
	sleep,100
	WinWait, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
	IfWinNotActive, タスクシュート　%a_year%-%a_mon%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
	MouseClick, left,  444,  338
	Sleep, 100
	Send, {vk1Dsc07B}{CTRLDOWN}g{CTRLUP}
	WinWait, ジャンプ, 
	IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
	WinWaitActive, ジャンプ, 
	send,{vk1Dsc07B}
	Send,  i8{ENTER}
	WinWait, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
	IfWinNotActive, タスクシュート　%a_year%-%a_mon%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mon%-%a_dd%, 
	Send, {CTRLDOWN}{SHIFTDOWN}{DOWN}{SHIFTUP}{CTRLUP}{CTRLDOWN}c{CTRLUP}
	WinWait, Course Vector Google Tasks, 
	IfWinNotActive, Course Vector Google Tasks, , WinActivate, Course Vector Google Tasks, 
	WinWaitActive, Course Vector Google Tasks, 
	MouseClick, left,  219,  17
	Sleep, 100
	MouseClick, left,  58,  44
	Sleep, 100
	WinWait, JavaScript, 
	IfWinNotActive, JavaScript, , WinActivate, JavaScript, 
	WinWaitActive, JavaScript, 
	MouseClick, left,  181,  92
	Sleep, 100
	Send,  29=0{BACKSPACE}{BACKSPACE}%a_year%-%a_mon%-%a_dd%{ENTER}
	WinWait, Course Vector Google Tasks, 
	IfWinNotActive, Course Vector Google Tasks, , WinActivate, Course Vector Goo	gle Tasks, 
	WinWaitActive, Course Vector Google Tasks, 
	Send, {CTRLDOWN}v{CTRLUP}
return
}

>^g::
{
	ifwinnotexist,Course Vector Google Tasks
	{
			run,C:\Program Files (x86)\Course Vector\Google Tasks\Google Tasks.exe
			winwaitactive,Course Vector Google Tasks
	}
	
	send,{blind}{ctrl up}
	sleep,100

	send,{vk1Dsc07B}
	Send, ^c

	WinActivate, Course Vector Google Tasks, 
	sleep,100
	mouseclick,left,497,592,,1,
	sleep,100
	Send, {CTRLDOWN}v{CTRLUP}
return

}


<^+n::
{
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	send,{vk1Dsc07B}
	send,i100
	send,{enter}
	sleep,200
	send,^{up 2}
	send,{down}
	send,^{down}
	send,{down}
	return
}

<^i::
{
	send,{blind}{ctrl up}{shift up}
	send,!x
	send,sa
	return
}


>^+a::
{
	ifwinnotexist,ahk_class ENMainFrame

	 {
	run,C:\Program Files (x86)\Evernote\Evernote\Evernote.exe

	Sleep, 500
	winactivate,タスクシュート
	sleep,1000
	
	return

	}
	send,^g
	sleep,100
	send,{bs 10}
	send,{vk1Dsc07B}
	sleep,150

	send,i7
	send,{enter}
	sleep,350
	send,+^{right}
	send,+^{down}

	send,^c
	clipwait,10
	send,^+{f4}
	
	sleep,750

	send,^g
	sleep,150
	send,{bs 10}
	send,{vk1Dsc07B}
	sleep,150

	send,m7
	send,{enter}

	sleep,350
	send,^{down}
	send,+^{up}
	send,+^{left 4}

	send,^c
	clipwait,10
	send,^+{f4}
	
	sleep,700
	winactivate,ahk_class ENMainFrame
	

return
}


>^+w::
>^+t::
{
	send,^c
	clipwait,10
	
	task := clipboard
	counter = 0
	logresult := 0
	predicttime := 0
	stringtrimright,task,task,2

		loop 1000
		{
			
			FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt, a_index
			
			if (errorlevel = 1)
				{
				break
				}
						
			stringmid,logresult,line,24,5
			stringtrimleft,logtask,line,37	
		
			
			if(task = logtask)
				{
				
					counter++
					predicttime += logresult
				}
		}			
		
		EnvDiv, predicttime, counter
		send,{right}
		send,{vk1Dsc07B}
		send,%predicttime%
		send,+{tab}
		return
	}


<^+e::
>^+e::
{
	clipboard_backup = %ClipboardAll%
	
	send,{vk1Dsc07B}
	send,^g
	sleep,200
	send,{vk1Dsc07B}
	send,i8
	send,{enter}
	sleep,200
	
	retask:
	send,^c
	clipwait,10
	
	task := clipboard
	
	if(task = "`r`n")
		{
		clipboard_backup = %ClipboardAll%
		exceljump("h7")
		send,^{down}
		send,{down}
		
		return
		}
		
	stringtrimright,task,task,2

		loop 1000
			{
			
			FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt, a_index
			
			if (errorlevel = 1)
			{
				send,{down}
				send,{left}
				break
			}
			
			if (a_index = 1000)
			{
				send,{down}
				send,{left}
				break
			}
						
			stringmid,logproject,line,36,1
			stringtrimleft,logtask,line,37	
		
			
			if(task = logtask)
			{
				send,{left}
				send,{vk1Dsc07B}
				send,%logproject%
				send,{enter}
				sleep,70
				break 
				
			}
	}
	
	send,{right}
	
		goto retask
		return

}

^e::
{
	send,^c
	clipwait,10
	
	task := clipboard

	stringtrimright,task,task,2

		loop 1000
			{
			
			FileReadLine, line, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt, a_index
			
			if (errorlevel = 1)
			{
				break
			}
						
			stringmid,logproject,line,36,1
			stringtrimleft,logtask,line,37	
		
			
			if(task = logtask)
			{
				send,{left}
				send,{vk1Dsc07B}
				send,%logproject%
				send,{enter}
				sleep,70
				break 
				
			}
		
	}
	return
}


>^+b:: ;getdouble
{

	FileMove, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog2.txt
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
     clipwait,10

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
		result = -----
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
	もし、空白なら-----をpredictに格納する
	次のプロジェクトデータをとるへ移動
*/

	if (temp3 = "`t")
	{
		predict = -----
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
もし、空白なら-----をpredictに格納する
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
	
	stringlen, longth,predict
	if(longth=4)
	{
		predict = 0%predict%
	}
	
	stringlen, longth,result
	if(longth=4)
	{
		result = 0%result%
	}
		

	strtemp = %year%-%month%-%day%,%start%,%endtime%,%result%,%predict%,%project%,%task%`n
	FileAppend , %strtemp%,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt

	
}
	filedelete , C:\Users\stroketip\Desktop\ショートカット\ahk\temp.txt
	FileRead, temp,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog2.txt
	FileAppend,%temp%,C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog.txt
	temp =
	filedelete, C:\Users\stroketip\Desktop\ショートカット\ahk\tasklog2.txt
return
}

^*::
{
	send,^{left 6}
	send,{right 10}
	send,^:
	send,{enter}
	send,{left 4}
	return
}

] & enter::

{
	send,{right}
	send,{right}
	send,{right}
	send,{right}
	send,^:
	send,{enter}
	return
}

	;入力途中ならOK
~tab & k::
{

	send,{esc}
	send,{vk1Dsc07B}
	send,{esc}
	
	send,^{left 12}
	send,{right 10}
	send,^`:
	send,{enter}
	return
}	

^+z::
{
	send,^{left 8}
	send,{right 5}
	send,z
	send,{enter}
	return
}

^+.::
{
	send,^{left 8}
	send,{right 5}
	send,.
	send,{tab}
	send,{right 4}
	send,^{:}
	send,{enter}
	send,{left 4}
	return
}

~f & numpadenter::
{
	clipboardbackup = %ClipboardAll%
	Clipboard=
	send,{bs}
	send,{up}
	send,{f2}
	send,^+{left}
	send,^c
	clipwait,10
	anser := clipboard / 60
	send,%anser%
	sleep,100
	anser=
	send,{enter}
	clipboard := clipboardbackup
	return
}

~: & numpadenter::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	send,{bs}
	send,{f2}
	send,^+{left}
	send,^c
	clipwait,10
	anser := clipboard / 60
	send,%anser%
	sleep,100
	anser=
	send,{enter}
	clipboard := clipboardbackup
	return
}
;--;エクセル


#IfWinActive ahk_class XLMAIN

vk1Dsc07B & l::
{
	send,{f2}
	sleep,100
	send,{end}
	return
}


vk1Dsc07B & h::
{
 send,{f2}
 sleep,100
 send,{home}
return
}

<^!]::
{

Errorlevel =
process, exist,Clibor.exe

if(Errorlevel <> 0)
{
sleep,150
send,{blind}{ctrl up}{alt up}
Send, {CTRLDOWN}{CTRLUP}{CTRLDOWN}{CTRLUP}
return
}

run,C:\Users\stroketip\Desktop\ショートカット\clibor\Clibor.exe
sleep,500

send,{blind}{ctrl up}{alt up}
Send, {CTRLDOWN}{CTRLUP}{CTRLDOWN}{CTRLUP}

return

}

<^r::
{
	send,{esc}
	sleep,100
	send,{right}
	sleep,100
	send,^c
	sleep,100
	send,{left}
	send,^v
	return
}
	
vk1Dsc07B & t::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	inputbox,value
	
	if(errorlevel = 1)
	{
		return
	}
	
	sleep,100
	
	send,^1
	winwait,セルの書式設定
	sleep,50
	
;	send,{tab}

	winactivate,a
	
	MouseGetPos, x0, y0
	mouseclick,left,41,42

	MouseMove, x0, y0
	
	send,{tab}

	send,{pgdn}
	
	send,{tab 2}
	send,{pgup 10}
	send,+{tab}
	send,{right}
	send,{vk1Dsc07B}
	send,"
	clipboard := value
	clipwait,10
	
	send,^v
	send,"
	sleep,100
	
	send,{enter}
	send,{enter}
	
	Clipboard := clipboard_backup
	
	value =
	send,{blind}{vk1Dsc07B}{vk1Dsc07B up}
	return
}

vk1Dsc07B & f::
{
	send,{f2}
	return
}


~vk1Dsc07B & up::
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	send,{f2}
	sleep,3
	send,+{up}
	send,^c
	clipwait,10

	temp =
	temp := clipboard
	
	send,{esc}
	sleep,3
	send,{up}
	
	clipboard =
	send,^c
	clipwait,10

	
	temp2 :=
	temp2 := clipboard
	
	
	clipboard := temp
	
	send,^v
	sleep,3
	send,{down}
	
	clipboard := temp2
	
	send,^v
	send,{up}
	
	Clipboard := clipboard_backup
	
	return
}


vk1Dsc07B & down::
{
	clipboard_backup = %ClipboardAll%
	
	clipboard =
	send,{f2}
	sleep,3
	send,+{up}
	send,^c
	
	clipwait,10
	temp =
	temp := clipboard
	
	send,{esc}
	sleep,3
	send,{down}
	
	clipboard =
	send,^c
	clipwait,10

	
	temp2 =
	temp2 := clipboard
	
	
	clipboard := temp
	
	send,^v
	sleep,3
	send,{up}
	
	clipboard := temp2
	
	send,^v
	send,{down}
	
	Clipboard := clipboard_backup
	
	return
}






;24時間を足した数字を入力する
~: & NumpadAdd::
{
	
	clipboard_backup = %ClipboardAll%

	send,{bs}
	sleep,10
	send,{f2}
	send,^z
	sleep,100
	send,^c
	clipwait,10


	temp := clipboard

	
	stringtrimright,temp,temp,2

	stringtrimright,temp2,temp,3
	stringright,temp,temp,4
	stringtrimright,temp,temp,1
	
	temp2 += 24
	
	send,%temp2%%temp%
	
	Clipboard := clipboard_backup
	
	send,{enter}
	*/
	return
}

;12時間足した数値を入力する
~: & Numpad6::
{
	clipboard_backup = %ClipboardAll%

	send,{bs}
	sleep,10
	send,{f2}
	send,^z
	sleep,100
	send,^c
	clipwait,10


	temp := clipboard

	
	stringtrimright,temp,temp,2

	stringtrimright,temp2,temp,3
	stringright,temp,temp,4
	stringtrimright,temp,temp,1
	
	
	temp2 += 12
	
	send,%temp2%%temp%
	
	Clipboard := clipboard_backup
	
	send,{enter}
	
	return
}

~: & NumpadSub::
{
	clipboard_backup = %ClipboardAll%

	send,{bs}
	sleep,10
	send,{f2}
	send,^z
	sleep,100
	send,^c
	clipwait,10



	temp := clipboard

	
	stringtrimright,temp,temp,2

	stringtrimright,temp2,temp,3
	stringright,temp,temp,4
	stringtrimright,temp,temp,1
	
	
	temp2 -= 24
	
	send,%temp2%%temp%
	
	Clipboard := clipboard_backup
	
	send,{enter}
	
	return
}


;現在のアクティブセルのアドレスをコピー


<^+c::
{
	clipboard_backup = %ClipboardAll%
	send,{vk1Dsc07B}
	send,^c
	clipwait,10
	
	temp := clipboard
	clipboard = =SUBSTITUTE(ADDRESS(1,COLUMN(),4),1,)&ROW()
	clipwait,10
	
	send,^v
	send,{enter}
	send,{up}
	
	send,^c
	clipwait,10
	
	temp := clipboard
	stringtrimright temp,temp,2
	
	clipboard := temp
	
	send,^z
	
	return
}

:*:,,address::
:*:,,adres::
:*:,,adoresu::
{
	send,=SUBSTITUTE(ADDRESS(1,COLUMN(),4),1,)&ROW()
	return
}

^+o::
{
clipboard_backup_excel = %ClipboardAll%

	MouseGetPos, x0, y0


	send,^c
	clipwait,10

	send,!h
	sleep,50
	send,h,
	sleep,50
	winactivate,a

	mousemove,14,102
	sleep,150
	mouseclick,left

	MouseMove, x0, y0

	Clipboard := clipboard_backup_excel

return
}

#numpad1::
{
	send,{alt}hj
	sleep,20
	send,{right 3}
	send,{enter}
	return
}

#numpad2::
{
	send,{alt}hj
	sleep,20
	send,{right 2}
	send,{enter}
	return
}
#numpad3::
{
	send,{alt}hh
	sleep,20
	send,{down 2}
	send,{right 4}
	send,{enter}
	return
}
#numpad4::
{
	send,{alt}hh
	sleep,20
	send,{down 2}
	send,{right 5}
	send,{enter}
	return
}
#numpad5::
{
	send,{alt}hh
	sleep,20
	send,{down 2}
	send,{right 6}
	send,{enter}
	return
}
#numpad6::
{
	send,{alt}hh
	sleep,20
	send,{down 2}
	send,{left 3}
	send,{enter}
	return
}
#numpad7::
{
	send,{alt}hh
	sleep,20
	send,{down 2}
	send,{left 2}
	send,{enter}
	return
}
#numpad8::
{
	send,{alt}hh
	sleep,20
	send,{down 4}
	send,{enter}
	return
}
#numpad9::
{
	send,{alt}hh
	sleep,20
	send,{left}
	send,{down 2}
	send,{enter}
	return
}
#numpad0::
{
	send,{alt}hj
	sleep,20

	return
}

^#numpad1::
{
	send,{alt}hfc
	sleep,20
	send,{down}
	send,{left 4}
	send,{enter}
	return
}

^#numpad2::
{
	send,{alt}hfc
	sleep,20
	send,{down}
	send,{left 5}
	send,{enter}
	return
}
^#numpad3::
{
	send,{alt}hh
	sleep,20
	send,{right 4}
	send,{enter}
	return
}
^#numpad4::
{
	send,{alt}hh
	sleep,20
	send,{right 5}
	send,{enter}
	return
}
^#numpad5::
{
	send,{alt}hh
	sleep,20
	send,{left 4}
	send,{enter}
	return
}
^#numpad6::
{
	send,{alt}hh
	sleep,20
	send,{left 3}
	send,{enter}
	return
}
^#numpad7::
{
	send,{alt}hh
	sleep,20
	send,{left 2}
	send,{enter}
	return
}
^#numpad8::
{
	send,{alt}hh
	sleep,20
	send,{right}
	send,{enter}
	return
}
^#numpad9::
{
	send,{alt}hfc
	sleep,20
	send,{up 2}
	send,{right 2}
	send,{enter}
	return
}
^#numpad0::
{
	send,{alt}hfc
	sleep,20
	return
}


^+i::
{
	clipboard_backup = %ClipboardAll%

	Clipboard := clipboard_backup_excel

	send,^v

	clipboard_backup = %ClipboardAll%

	return
}

appskey & b::
^+b::
{
	send,!h
	send,ba
	return
}

<^+s::
:*:,,sum::
{
	send,!h
	send,us
	sleep,300
	send,{enter}
	return
}

f1::
{
	ifwinactive タスクシュート　%a_year%-%a_mm%-%a_dd%
{
	send,#{down}
	return
}

	taskchutetoday()

 return

}


+f1::
{
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}

	ifwinactive タスクシュート　%a_year%-%a_mm%-%day%
{
	send,#{down}
	return
}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



^f1::

{
	day := a_dd-1
	if day < 10 
	{
		day = 0%day%
	}

	ifwinactive タスクシュート　%a_year%-%a_mm%-%day%
{
	send,#{down}
	return
}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}



!f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	ifwinactive タスクシュート　%a_year%-%a_mm%-%day%
{
	send,#{down}
	return
}


	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}

+^f1::

{
	day := a_dd-2
	if day < 10 
	{
		day = 0%day%
	}

	ifwinactive タスクシュート　%a_year%-%a_mm%-%day%
{
	send,#{down}
	return
}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
 return

}


<^+::

{
	send,{vk1Dsc07B}
	send,!a
	sleep,200
	
	send,sa
	sleep,800

	send,^g
	send,{vk1Dsc07B}
	sleep,500
	send,l9
	send,{Enter}
	sleep,500

	send,=m8
	sleep,500
	send,{Enter}
	sleep,500

	send,{Right}
	send,^{Down}
	send,{Left}
	sleep,500
	
	send,^+{Up}
	sleep,500

	send,^d
	sleep,500

	send,^g
	sleep,500

	send,h8{Enter}

	}

Return



#ifwinactive  [自動回復済み] - Excel

<^+j::
>^+j::
{
	
Send, {F12}
WinWait, 名前を付けて保存, 
IfWinNotActive, 名前を付けて保存, , WinActivate, 名前を付けて保存, 
WinWaitActive, 名前を付けて保存, 
WinWaitActive, 名前を付けて保存, 

	clipboard_backup = %ClipboardAll%
	clipboard=
	sleep,100

	
	send,^a
	sleep,100
	
	send,^c
	sleep,300
	
	StringReplace, clipboard, clipboard,  (自動保存済み) ,,
	StringReplace, clipboard, clipboard, (自動回復済み),,
	stringreplace, clipboard, clipboard, %a_space%,,

		
		
	clipboard = C:\Users\stroketip\Dropbox\xls\tタスクシュート\%clipboard%
	sleep,100
	send,^v

	Clipboard := clipboard_backup
	
	send,{enter}
	WinWait, 名前を付けて保存の確認, 
IfWinNotActive, 名前を付けて保存の確認, , WinActivate, 名前を付けて保存の確認, 
WinWaitActive, 名前を付けて保存の確認, 
WinWaitActive, 名前を付けて保存の確認, 
Sleep, 100

	
	send,y
	
;	clipboard = C:\Users\stroketip\Dropbox\xls\tタスクシュート

	return
}

/*
#IfWinActive ahk_class sfl_window_class

^+s::

{
	send,^s
	sleep,500

	send,{Enter}
	sleep,850

	send,!{F4}

Return
}
*/

;--;One Note
#ifwinactive Microsoft OneNote

#s::
	{
	run C:\Program Files (x86)\Stickies\stickies.exe
	winactivate ASticky
	sleep, 150
	send ^n
	return
	}

xbutton1::
{
	send,!n
	send,r
	return
}
printscreen::
{
	send,{lalt}
	send,nr
	return
	}

<^+p::
{
	send,{blind}{ctrl up}
	send,!dp
	send,{enter}
	MouseGetPos, x0, y0
	
	winactivate,ahk_class Net UI Tool Window
	
	MouseMove, 206,92
	MouseClick, left
	MouseMove, x0, y0
	
	return
}

<^+l::
{
	send,{blind}{ctrl up}
	send,!ds
	sleep,50
	
	MouseGetPos, x0, y0
	
	MouseMove, 9,30,5
	MouseClick, left
	sleep,50
	MouseMove, x0, y0
	
	return
}

;:--  Nobrace     未分類

;--;Microsoft Word
#ifwinactive - Microsoft Word

>+p::
{
MouseGetPos, x0, y0

MouseMove, 117,15
MouseClick, left
MouseMove, x0, y0

return
}

;--; ithoughts

#ifwinactive ahk_exe iThoughts.exe


f12::

{
	send,{alt}
	sleep,100
	send,f
	sleep,100
	send,{down 4}
	send,{enter}
	
	return
	
}


;--;ココドリ kokodori
#ifwinactive ahk_class WindowsForms10.Window.8.app.0.1ca0192_r9_ad1

s::
{
	MouseGetPos, x0, y0
	MouseMove, 42,461
	MouseClick, left
	
	mousemove, 625,462
	return
}

space::
{
	mouseclick,left
	return
}

d::
{
	mousegetpos,x0,y0
	mousemove, 107,464
	mouseclick,left
	
	mousemove,625,462
	return
}

q::
{
	mouseclick,left,653,16
	return
}

;

#ifwinactive ホーム | Link Time
;link time

;--;orchis

#ifwinactive ahk_class Afx:00ED0000:8:00000000:00000000:009D09F7
vk1Dsc07B & space::
!f4::
vk1Dsc07B & q::

{
	MouseGetPos, x0, y0
	
	MouseMove, 84,9
	MouseClick, left

	return
}

;--;UWSC


#ifwinactive ahk_class TFOya.UnicodeClass
#ifwinactive ahk_class TFOya.UnicodeClass

<^numpadins::
{
	uwscload(0)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kinsert.ahk,%dayfold%\key2kinsert.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kinsert.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc0.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kinsert.ahk
	return
}


<^numpadend::
{
	uwscload(1)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kend.ahk,%dayfold%\key2kend.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kend.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc1.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kend.ahk
	return
}

<^numpaddown::
{
	uwscload(2)
	dayfold:=uwscfolder(0)
	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kdown.ahk,%dayfold%\key2kdown.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kdown.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc2.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kdown.ahk
	return
}

<^numpadpgdn::
{
	uwscload(3)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgdn.ahk,%dayfold%\key2kpgdn.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgdn.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc3.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgdn.ahk
	return
}

<^numpadleft::
{
	uwscload(4)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kleft.ahk,%dayfold%\key2kleft.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kleft.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc4.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kleft.ahk
	return
}

<^numpadclear::
{
	uwscload(5)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2knum5.ahk,%dayfold%\key2knum5.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2knum5.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc5.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2knum5.ahk
	return
}

<^numpadright::
{
	uwscload(6)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kright.ahk,%dayfold%\key2kright.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kright.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc6.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kright.ahk
	return
}

<^numpadhome::
{
	uwscload(7)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2khome.ahk,%dayfold%\key2khome.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2khome.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc7.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2khome.ahk
	return
}

<^numpadup::
{
	uwscload(8)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kup.ahk,%dayfold%\key2khome.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kup.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc8.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kup.ahk
	return
}

<^numpadpgup::
{
	uwscload(9)
	dayfold:=uwscfolder(0)

	filecopy C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgup.ahk
.ahk,%dayfold%\key2kpgup.ahk
	filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgup.ahk
	sleep,100

	filebox=run,C:\Users\stroketip\Desktop\uwsc9.UWS`nexitapp`n
	FileAppend , %filebox%, C:\Users\stroketip\Desktop\ショートカット\ahk\library\key2kpgup.ahk
	return
}




uwscset(filenumber)
{
WinWait, ahk_class TFOya.UnicodeClass, 
IfWinNotActive, ahk_class TFOya.UnicodeClass, , WinActivate, ahk_class TFOya.UnicodeClass, 
WinWaitActive, ahk_class TFOya.UnicodeClass, 
MouseClick, left,  47,  15
Sleep, 100
MouseClick, left,  58,  42
Sleep, 100
WinWait, 名前を付けて保存, 
IfWinNotActive, 名前を付けて保存, , WinActivate, 名前を付けて保存, 
WinWaitActive, 名前を付けて保存, 

clipboard_backup = %ClipboardAll%
clipboard=

	clipboard=C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
	clipwait,10
	Send, ^v
	sleep,100
	send,{ENTER}
	sleep,100

;run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS

return
}

uwscload(filenumber)
{

	ifexist C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
{
	run,C:\Users\stroketip\Desktop\uwsc%filenumber%.UWS
/*
ここに入れる
ahk2keyにセットをする
*/
	return
}
else
{
	uwscset(filenumber)
}


	return
}


uwscfolder(day)
{
	
	time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2

	
	FileCreateDir, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%
	
	day=C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%

return,day
}

f12::
{
	send,s
	winwait,名前を付けて保存
	
	folderopen("C:\Users\stroketip\Desktop\ショートカット\uwsc48e\library\")
	
	return
}

;--;Atom

#ifwinactive Atom
f12::
{
	send,^+s
	return
}

;--;eris
/*
#ifwinactive ahk_exe Eris.exe
^l::
{
	MouseGetPos, x0, y0
	MouseMove, 53, 51
	MouseClick, left
	mouseclick, left
	send,^a
	
	mousemove,x0,y0
	return
}
*/
;--;gifcot


#ifwinactive ahk_class gifcotLeaf
/*
rbutton::
{
	send,rbutton
	MouseGetPos, x0, y0
	
	MouseMove, 62,165,2,r
	MouseClick, left
	MouseMove, -62, -165,2,r
	
	return
}
*/

;--;関数
/*
 dsendmail x 
 変数foldtemp はd-sendmailの実行パス
*/

kouzashot(kouza,a=1.5)
{
	clipboard_backup = %ClipboardAll%

	clipboard =
	clipboard = %kouza%
	clipwait,10
	sleep,100
	send,^v

		Input, UserInput, Ta L1 ,.
		if ErrorLevel = Max
			{
				if (UserInput = "k")
					{
						send,{space}
						
						kouzashot(" 第講",0.1)
						send,{left}
						return
					}
				else if (UserInput = "e")
					{
						kouzashot(" 演習",0.1)
						return
					}
				else if (UserInput = "r",0.1)
					{
						kouzashot(" 課題",0.1)
						return
					}
				else if (UserInput = "d")
					{
						send,{space}
						kouzashot(" ドリル",1)
						return
					}
				}
	Clipboard := clipboard_backup
	return
}

IME_GET(WinTitle="A")  {
	ControlGet,hwnd,HWND,,,%WinTitle%
	if	(WinActive(WinTitle))	{
		ptrSize := !A_PtrSize ? 4 : A_PtrSize
	    VarSetCapacity(stGTI, cbSize:=4+4+(PtrSize*6)+16, 0)
	    NumPut(cbSize, stGTI,  0, "UInt")   ;	DWORD   cbSize;
		hwnd := DllCall("GetGUIThreadInfo", Uint,0, Uint,&stGTI)
	             ? NumGet(stGTI,8+PtrSize,"UInt") : hwnd
	}

    return DllCall("SendMessage"
          , UInt, DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hwnd)
          , UInt, 0x0283  ;Message : WM_IME_CONTROL
          ,  Int, 0x0005  ;wParam  : IMC_GETOPENSTATUS
          ,  Int, 0)      ;lParam  : 0
}

dsendx(foldtemp)
{
		clipboard_backup = %ClipboardAll%
	send,^a
	send,^c
	clipwait,10
	
	ifwinexist,D-SendMail
	{
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	else
	{
		run,"%foldtemp%"
		
		
		winactivate,D-SendMail
		winwait,D-SendMail
	}
	
	send,{tab 8}
	sleep,50
	send,^v
	sleep,50
	winactivate,D-SendMail
	send,{tab}
	send,^v
	sleep,30
	send,{tab}
	clipboard_backup = %ClipboardAll%
	
	return
}
taskchuteout(taskslot)
{
 	clipboard_backup = %ClipboardAll%
	send,{esc}
	loop,parse,taskslot,`n
{

	clipboard=
	
	tempa = %a_loopfield%`n
	clipwait,1
	
	stringright,locatea,tempa,2
	
	if(locatea <> "`r`n")
	{
		tempa = %tempa%`r`n
	}
	
	clipboard=%tempa%
	clipwait,1
	sleep,200
	
	{
		send,^v
		sleep,200
		send,{down}
		sleep,200
		
	}

}
Clipboard := clipboard_backup
return
}


exceljump(locate)
{
		sleep,50
		send,{vk1Dsc07B}
		send,^g
		WinWait, ジャンプ, 
	IfWinNotActive, ジャンプ, , WinActivate, ジャンプ, 
	WinWaitActive, ジャンプ, 
		send,{vk1Dsc07B}
		send,%locate%
		send,{enter}
		return
}

appskeyopen()
{

	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,^c
	
	clipwait,10
	
	temp := clipboard
	
	
	stringright,checks,temp,4

	stringleft,c,checks,1
	if(c=".")
	{
	stringtrimleft,checks,checks,1
	}
	
	if(checks = "ahk")
	{
		run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	
	if(checks = "pdf")
	{
		run,C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe %temp%"
	}
		if(checks = "bmp")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\MassiGra041\MassiGra.exe %temp%"
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "jpg")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\MassiGra041\MassiGra.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}	
	
		if(checks = "jpeg")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\MassiGra041\MassiGra.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}	
	
	
		if(checks = "png")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\MassiGra041\MassiGra.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "iso")
	{
		run,C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "avi")
	{
		run,C:\Program Files (x86)\MPC-HC\mpc-hc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "mpg")
	{
		run,C:\Program Files (x86)\MPC-HC\mpc-hc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "wmv")
	{
		run,C:\Program Files (x86)\MPC-HC\mpc-hc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "mpeg")
	{
		run,C:\Program Files (x86)\MPC-HC\mpc-hc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
				if(checks = "html")or(checks = "htm")
	{
		run,C:\Users\stroketip\AppData\Local\atom\atom.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
				if(checks = "mpeg")
	{
		run,C:\Program Files (x86)\MPC-HC\mpc-hc.exe "%temp%
		Clipboard := clipboard_backup
		return
	}
			if(checks = "gdoc")
	{
		run,C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE "%temp%"
		clipboard := clipboard_backup
		return
	}


	/*
	 拡張子2文字のやつをとりあえず開けるようにする
	 あとから時間があれば、拡張子を正確に読み取って治すようにする
	*/
		stringtrimleft,checks,checks,2
		if(checks = "md")
	{
		run,C:\Users\stroketip\AppData\Roaming\Haroo Studio\Haroopad\haroopad.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe "%temp%"
	
	Clipboard := clipboard_backup
	
	

	return
}

ctrlappskeyopen()
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,^c
	
	clipwait,10
	sleep,100
	temp := clipboard
	sleep,100
	filegetattrib,directorycheck,%temp%
	
	if(directorycheck ="D")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe -f "%temp%"
		send,{blind}{ctrl up}
		return
	}
	
	stringright,checks,temp,4

	stringleft,c,checks,1
	if(c=".")
	{
	stringtrimleft,checks,checks,1
	}
	
	if(checks = "zip")
	{
;		run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe -f "%temp%"
		run,C:\Program Files\Honeyview\Honeyview.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "pdf")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe %temp%
		clipboard := clipboard_backup
		return
	}
		if(checks = "rar")
	{
;		run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe -f "%temp%"
	run,C:\Program Files\Honeyview\Honeyview.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "jpg")
	{
		run,C:\Program Files (x86)\Fenrir Inc\PictBear Second Edition\PictBear.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}	
	
		if(checks = "jpeg")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}	
	
	
		if(checks = "png")
	{
		run,C:\Windows\SysWOW64\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "iso")
	{
		run,C:\Program Files (x86)\DAEMON Tools Lite\DTLite.exe -mount 0`, "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "mp3")or(checks = "wav")
		{
		run,C:\Program Files (x86)\Adobe\Adobe Soundbooth CS5\Adobe Soundbooth CS5.exe "%temp%"
			Clipboard := clipboard_backup
		return
		}
		if(checks = "wmv")or(checks = "mkv")or(checks = "avi")or(checks = "mp4")	{
		run,C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "txt")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\TxtMiru2.0\TxtMiru2.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "flac")
		;or(checks = "mkv")or(checks = "avi")or(checks = "mp4")	
		{
		run,C:\Users\stroketip\Desktop\ショートカット\lame3.99.5-64\lame.exe "%temp%" ,hide
		Clipboard := clipboard_backup
		return
	}
		/*
	 拡張子2文字のやつをとりあえず開けるようにする
	 あとから時間があれば、拡張子を正確に読み取って治すようにする
	*/
		stringtrimleft,checks,checks,2
		if(checks = "md")
	{
		run,C:\Users\stroketip\AppData\Roaming\Haroo Studio\Haroopad\haroopad.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
	
;	run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe "%temp%"
	run,C:\Program Files\Honeyview\Honeyview.exe "%temp%"
	
	Clipboard := clipboard_backup

	return
	
}

shiftappskeyopen()
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	
	send,^c
	
	clipwait,10
	
	temp := clipboard
	
	
	stringright,checks,temp,4

	stringleft,c,checks,1
	if(c=".")
	{
	stringtrimleft,checks,checks,1
	}
	else
	{
		stringmid,c,checks,2,1
		if(c=".")
		{
			
			stringtrimleft,checks,checks,2
		}
	}

;if(checks = "拡張子")
;{その拡張子に対応する行動}	
;で追加してください
	
	if(checks = "ahk")
	{
		run,C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe /in "%temp%" 
		Clipboard := clipboard_backup
		return
	}
	if(checks = "wav")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\lame3.99.5-64\lame.exe %temp% ,hide
		Clipboard := clipboard_backup
		return
	}
	if(checks = "wv")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\wavpack-4.70.0\wvunpack.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	if(checks = "tx")
	{
		run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	if(checks = "png")
	{
		filename := temp
		stringtrimright,filename,filename,4
		
		run,C:\Program Files\irfanview\i_view64.exe %temp% /convert=%filename%.jpg
		clipboard := clipboard_backup
		return
	}
	if(checks = "bmp")
	{
		filename := temp
		stringtrimright,filename,filename,4
		
		
		run,C:\Program Files\irfanview\i_view64.exe %temp% /convert=%filename%.jpg
		clipboard := clipboard_backup
		return
	}
	if(checks = "jpg")
	{
		filename := temp
		stringtrimright,filename,filename,4
		
		run,C:\Program Files\irfanview\i_view64.exe %temp% /convert=%filename%.bmp
		clipboard := clipboard_backup
		return
	}
		if(checks = "avi")
	{
		run,C:\Program Files\Adobe\Adobe Media Encoder CS6\Adobe Media Encoder.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "mpg")
	{
		run,C:\Program Files\Adobe\Adobe Media Encoder CS6\Adobe Media Encoder.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "wmv")
	{
		run,C:\Program Files\Adobe\Adobe Media Encoder CS6\Adobe Media Encoder.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}	
		if(checks = "zip")
	{
		run,C:\Program Files (x86)\Lhaplus\Lhaplus.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "rar")
	{
		run,C:\Program Files (x86)\Lhaplus\Lhaplus.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "mp3")
	{
	run,C:\Program Files (x86)\Audacity\audacity.exe "%temp%"

/*		
		run,C:\Program Files (x86)\Adobe\Adobe Audition CS6\Adobe Audition CS6.exe "%temp%"
*/
		
		Clipboard := clipboard_backup
		return
	}
		if(checks = "txt")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\rubymate300\RubyMate.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
			if(checks = "dot")
	{
		splitpath,temp,, OutDir, , OutNameNoExt,

		line1 =cd %OutDir%\`n
		line2 =dot -T svg %OutNameNoExt%.dot -o %OutNameNoExt%.svg`n

		FileAppend , %line1%, C:\Users\stroketip\Desktop\ショートカット\ahk\run batdotrun.bat
		FileAppend , %line2%, C:\Users\stroketip\Desktop\ショートカット\ahk\run batdotrun.bat
		sleep,100
		run,C:\Users\stroketip\Desktop\ショートカット\ahk\run batdotrun.bat
		sleep,300
		filedelete,C:\Users\stroketip\Desktop\ショートカット\ahk\run batdotrun.bat
		
		Clipboard := clipboard_backup
		return
	}
	
	/*
	if(checks = "pdf")
	{
		run,C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe %temp%
	}
		if(checks = "bmp")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	
		if(checks = "jpg")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}	
	
		if(checks = "jpeg")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}	
	
	
		if(checks = "png")
	{
		run,C:\Windows\SysWOW64\mspaint.exe %temp%
		Clipboard := clipboard_backup
		return
	}
	
	run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe "%temp%"
	*/
	
	/*
		拡張子が2文字のファイルを開く場合
		とりあえず開くように
	*/
		stringtrimleft,checks,checks,2
		if(checks = "md")
	{
		run,C:\Program Files\Sublime Text 3\sublime_text.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
	Clipboard := clipboard_backup

	return

	
}

altappskeyopen()
{
	clipboard_backup = %ClipboardAll%
	clipboard =
	
	send,^c
	
	clipwait,10
	
	temp := clipboard
	
	
	stringright,checks,temp,4

	stringleft,c,checks,1
	if(c=".")
	{
	stringtrimleft,checks,checks,1
	}
	
	if(checks = "jpg")
	{
		run,C:\Program Files (x86)\Panasonic\YomikakuV15\Yomikaku.exe "%temp%"
		clipboard := clipboard_backup
		return
	}
		if(checks = "zip")or(checks = "rar")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\leeyes261\Leeyes.exe -f "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "bmp")
	{
		run,C:\Program Files (x86)\Panasonic\YomikakuV15\Yomikaku.exe "%temp%" "%temp%"
		clipboard := clipboard_backup
		return
	}
		if(checks = "png")
	{
		filename := temp
		stringtrimright,filename,filename,4
		
		run,C:\Program Files\irfanview\i_view64.exe %temp% /convert=%filename%.bmp
		
		clipboard := clipboard_backup
		return
	}
		if(checks = "txt")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\rubymate300\RubyMate.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		if(checks = "mp3" or "wav")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\Hayaemon274\Hayaemon2\Hayaemon.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}
		/*
	 拡張子2文字のやつをとりあえず開けるようにする
	 あとから時間があれば、拡張子を正確に読み取って治すようにする
	*/
		stringtrimleft,checks,checks,2
		if(checks = "md")
	{
		run,C:\Program Files (x86)\DA-Software\DA-MarkdownEditor\MarkdownEdit.exe "%temp%"
		Clipboard := clipboard_backup
		return
	}

	
	
						
	return
}


clickpath()
{
	mouseclick,left

	clipboard=

	sleep,20	
	send,^c

	clipwait,10
	
	temp := clipboard
	clipboard =

	clipboard := temp
	clipwait,10
	
	return
}

folderopen(path)

{
	temp=
	clipboard_backup = %ClipboardAll%
	
	sleep,100
	clipboard=

	send,^a
	sleep,100
	send,^c
	
	clipwait,10
	sleep,100
	temp := clipboard
	sleep,100
	
	send,^a
	
	clipboard=
	clipboard = %path%
	clipwait,10
	sleep,200
	
	send,^v
	sleep,100
	send,{enter}
	
	sleep,100
	
	clipboard=
	clipboard:= temp
	clipwait,10
	
	if(clipboard <> "C:\Users\STROKE~1\AppData\Local\Temp")
	{
		sleep,100
	send,^v
	}
	Clipboard := clipboard_backup
	return
}	

taskchutetoday()
{

splashimage, C:\Users\stroketip\Desktop\ショートカット\ahk\library\bmp\tasktxt.png,すこしお待ちください,,

splashimage,show

	IfWinExist タスクシュート　%a_year%-%a_mm%-%a_dd%
	{
		WinWait, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
IfWinNotActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%a_dd%.xlsm
	}

		ifexist,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\*.txt
	{
WinWait, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
IfWinNotActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, , WinActivate, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
WinWaitActive, タスクシュート　%a_year%-%a_mm%-%a_dd%, 
	{	
	task=
	tasks=
	
	check1=
	
	saveasbackup("C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt")
	
	check1 := checktime("C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt")
	
	if(check1 = "different")
	
{
	
	filereadline,checkpc,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt,1

	if(checkpc ="------- PCから -------")
{	
	
	
	loop,read,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{

	stringright,locate,a_loopreadline,1
	if(locate<>"`n")
	{
		temp2=%a_loopreadline%`r`n
	}
	tasks = %tasks%%temp2%
}
	stringgetpos,locate2,tasks,----------------------
	stringtrimleft,tasks,tasks,locate2+22

}
	else
{
	fileread,temp2,*P65001 C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
{

	stringright,locate,temp2,1
	if(locate<>"`n")
	{
		temp2=%temp2%`r`n
	}
	tasks = %temp2%
}
	
}
}

	filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\tasktxt.txt
	
	loop,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\*.txt
	{
	
	filename = %a_loopfilename%
	
	FileRead , task,*P65001 C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\%filename%
	stringright,locate,task,1
	
	if(locate <> "`n")
	{
		task=%task%`r`n
	}
	
	tasks = %tasks%%task%
	
	}
/*
	loop,parse,tasks,`n
	{
		ifnotinstring,a_loopfield,`,`,
		{
			taskslot =%taskslot%%a_loopfield%`n
			
		}
	}
	tasks=%taskslot%

	
	exceljump("i8:i48")
	sleep,100
	clipboard=
	send,^c
	clipwait,10
	sleep,100

	taskchutet:=clipboard


	loop,parse,taskslot,`n
	{
		taskslotfield=%a_loopfield%`n
		loop,parse,taskchutet,`n
		{
			taskchutefield=%a_loopfield%`n
			if(taskslotfield=taskchutefield)
			{
				stringreplace,tasks,tasks,%taskslotfield%,,all
			}
		}
	}
	
*/

				
	sleep,150
	exceljump("i100")
	sleep,200
	send,^{up}
	send,{down}
	
	send,{esc}


	taskchuteout(tasks)

	loop,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\*.txt
	{
		filename:=a_loopfilename
		filedelete,C:\Users\stroketip\Dropbox\xls\tタスクシュート\txt\%filename%	
	}
	
	send,{up}
	splashimage,off
	return


}
		

	return
}

	splashimage,off
	return
}

taskchutenextday()
{
	day := a_dd+1
	if day < 10 
	{
		day = 0%day%
	}

	IfWinExist タスクシュート　%a_year%-%a_mm%-%day%
	{
		WinActivate
	}
	else
	{
	run,C:\Users\stroketip\Dropbox\xls\tタスクシュート\タスクシュート　%a_year%-%a_mm%-%day%.xlsm
	}
	return
}

checktime(filename)

{
	filegettime, temp,%filename%,m
	filegettime,temp2,%filename%,c
	
	if(temp = temp2)
	{
		return,"same"
	}
	else
	{
		return,"different"
	}
	return
}

saveasbackup(filename)
{
	FileCreateDir, C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%
	splitpath,filename,file
	filecopy,%filename%,C:\Users\stroketip\Documents\my project\%a_year%-%a_mm%-%a_dd%\%file%
	return
}

dayfolder(day)
{
	
	time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2

	
	FileCreateDir, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%
	path="C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%"
	folderopen(path)
return
}

dayfolderopen(day)
{
	time = %a_now%
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2

	FileCreateDir, C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%
	run,C:\Users\stroketip\Documents\my project\%yeartmp%-%monthtmp%-%daystmp%

	return
}

dateadd_out(day)
{
	send,{vk1Dsc07b}

	time := a_now
	envadd,time,day,days
	stringleft,yeartmp,time,4
	stringmid,monthtmp,time,5,2
	stringmid,daystmp,time,7,2

	send, %yeartmp%-%monthtmp%-%daystmp%

		Input, UserInput, T2.5 L1
		if ErrorLevel = Max
			{
				if (UserInput = "a")
					{
						send,{end}
						send,{left 6}
						send,{shift down}
						send,{left 2}
						send,{shift up}
						return
					}
		
				if (UserInput = "s")
					{
						send,{end}
						send,{left 3}
						send,{shift down}
						send,{left 2}
						send,{shift up}
						
						input,UserInput, T2.5 L1
						if ErrorLevel = MAX
						{
							while (UserInput=",")or(UserInput="i")
							{
							if (UserInput = ",")
								{
									send,{bs}
									time := a_now
									day := day - 30
									envadd,time,day,days
									stringmid,monthtmp,time,5,2
									send,%monthtmp%
									send,{shift down}
									send,{left 2}
									send,{shift up}
									input,UserInput, T2.5 L1
								}
							if (UserInput = "i")
								{
									send,{bs}
									time := a_now
									day := day + 30
									envadd,time,day,days
									stringmid,monthtmp,time,5,2
									send,%monthtmp%
									send,{shift down}
									send,{left 2}
									send,{shift up}									
									input,UserInput, T2.5 L1
								}

							}
						return
					}

						return
					}
				if (UserInput = "d")
					{
						send,{end}
						send,{shift down}
						send,{left 2}
						send,{shift up}
						
						input,UserInput, T2.5 L1
						if ErrorLevel = MAX
						{
							while (UserInput=",")or(UserInput="i")
							{
							if (UserInput = ",")
								{
									send,{bs}
									time := a_now
									day--
									envadd,time,day,days
									stringmid,daystmp,time,7,2
									send,%daystmp%
									send,{shift down}
									send,{left 2}
									send,{shift up}
									input,UserInput, T2.5 L1
								}
							if (UserInput = "i")
								{
									send,{bs}
									time := a_now
									day++
									envadd,time,day,days
									stringmid,daystmp,time,7,2
									send,%daystmp%
									send,{shift down}
									send,{left 2}
									send,{shift up}									
									input,UserInput, T2.5 L1
								}
/*;							if (UserInput = "s")
								{
									goto,datemonth
								}
*/
							}
						
						return
					}
			}
	return
	}
}

timmerset()

{
	clipboard_backup = %ClipboardAll%
	clipboard=
	send,^a
	send,^c
	clipwait,10
	send,{del}
	winshow,

	run,C:\Users\stroketip\Desktop\ショートカット\マルチタイマII.lnk
	winshow,マルチタイマ-II管理
	sleep,50

	temp := clipboard

	stringlen,len,temp
	if(len <3)
	{
		temp= %temp%:00
	}

	stringreplace,temp,temp,　,%a_space%

	temp2 := temp
	stringgetpos,temp3,temp2,:

	
	if (temp3 >= 6)
	{
		
		
	stringgetpos,tempspanum,temp,%a_space%
	tempspanum++
	stringleft,temptitle,temp,%tempspanum%


	stringtrimleft,temptim,temp,%tempspanum%
	stringgetpos,tempposnum,temptim,:

	stringleft,temptimhour ,temptim ,%tempposnum%
	
	tempposnum++
	stringtrimleft,temptimminutes,temptim,%tempposnum%
	
	temptimminutes := temptimminutes + (temptimhour * 60)
	
	clipboard := temptimminutes


	
	tempposnum -= 3
WinWait, マルチタイマ-II管理, 
IfWinNotActive, マルチタイマ-II管理, , WinActivate, マルチタイマ-II管理, 
WinWaitActive, マルチタイマ-II管理, 
	sleep,1500
	winactivate,マルチタイマ-II管理, 
	

	mouseclick,left,40,68,,0
	sleep,50

	winactivate,a
	
	sleep,1300
	send,{del}
	send,^v
	
	clipboard = %temptitle% %temptim%
	
	
	mouseclick,left,115,99,,0
	sleep,100
	
	mouseclick,left,82,131,,0
	sleep,100
	send,^a
	
	send,^v
	
	
	
	
	mouseclick,left,39,22,,0
	sleep,100
	
	
	winactivate,マルチタイマ-II管理
	
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	
	winhide,マルチタイマ-II管理

	return
		
	}
	
	stringgetpos,tempposnum,temp,:
	tempposnum += 3
	stringleft,temptim,temp,%tempposnum% 

	stringgetpos,tempspanum,temp,%a_space%
	tempspanum++
	stringtrimleft,temptitle,temp,%tempspanum%
	
	stringgetpos,tempposnum,temptim,:

	stringleft,temptimhour ,temptim ,%tempposnum%
	
	tempposnum++
	stringtrimleft,temptimminutes,temptim,%tempposnum%
	
	temptimminutes := temptimminutes + (temptimhour * 60)
	
	clipboard := temptimminutes

	run,C:\Users\stroketip\Desktop\ショートカット\マルチタイマII.lnk
	
	tempposnum -= 3
WinWait,マルチタイマ-II管理, 
IfWinNotActive,マルチタイマ-II管理, , WinActivate,マルチタイマ-II管理, 
WinWaitActive,マルチタイマ-II管理, 
	sleep,2100

	winactivate,マルチタイマ-II管理
	mouseclick,left,40,68,,0
	

	sleep,1300
	winactivate,a
	send,{del}
	send,%clipboard%
	
	clipboard = %temptitle% %temptim%
	
	mouseclick,left,115,99,,0
	sleep,100
	
	mouseclick,left,82,131,,0
	sleep,100
	send,^a
	
	send,^v
	sleep,100
MouseClick, left,  107,  19
Sleep, 100
WinWait, DL_Media, 
IfWinNotActive, DL_Media, , WinActivate, DL_Media, 
WinWaitActive, DL_Media, 
MouseClick, left,  262,  99
Sleep, 100
MouseClick, left,  207,  76
Sleep, 100
MouseClick, left,  243,  104
Sleep, 100
Send, {CTRLDOWN}a{CTRLUP}
clipboard_backup = %ClipboardAll%
clipboard =
clipboard =C:\Users\stroketip\Desktop\ショートカット\ahk\library\sound\コール音.wav
clipwait,10
send,^v
mouseclick,left,231,214
MouseClick, left,  269,  241


Sleep, 100
	
	mouseclick,left,39,22,,0
	sleep,100
	
	Winactivate, マルチタイマ-II管理
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	sleep,600
	mouseclick,left,147,301,,0
	
	winhide,マルチタイマ-II管理
	
	return
}

openclickpath()
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	send,{blind}{ctrl up}{vk1Dsc07B up}
	

	sleep,20	
	send,^c

	clipwait,10
	
	temp := clipboard
	clipboard =

	clipboard := temp
	clipwait,10

	sleep,50
		
	run,C:\Program Files\HmFilerClassic\HmFilerClassic.exe /select`,%clipboard%
	
	Clipboard := clipboard_backup
	
	
return

}



pdfopen()
{
	send,{blind}{vk1Dsc07B up}
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	send,^c
	
	clipwait,10
	
	temp := clipboard
	
	
	stringright,checks,temp,3
	
	if(checks = "ahk")
	{
		run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe %temp%
	}
	
	if(checks = "pdf")
	{
		run,C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe %temp%
	}
		if(checks = "bmp")
	{
		run,C:\Users\stroketip\Desktop\ショートカット\mspaint.exe %temp%
	}
	
		if(checks = "png")
	{
		run,C:\Windows\SysWOW64\mspaint.exe %temp%
	}
	

	Clipboard := clipboard_backup
	
	
	return
}


googlejpsend(char)
{
	char:=translate(char,"しあさって",3)
	char:=translate(char,"明明後日",3)
	char:=translate(char,"あした",1)
	char:=translate(char,"明後日",2)
	char:=translate(char,"明日",1)
	char:=translate(char,"あす",1)
	char:=translate(char,"あさって",2)


	return,char

}


translate(char,word,dayx)
{
	ifnotinstring,char,%word%
	return,char
	
	ifinstring,char,%word%
	{
		datex=%a_now%
		envadd,datex,%dayx%,day
		stringleft,datex,datex,8
	stringreplace,char,char,%word%,,
	
	stringleft,year,datex,4
	stringmid,month,datex,5,2
	stringmid,day,datex,7,2
	
	msg=%year%/%month%/%day%%a_space%%char%
	return,msg
	}
	
}

evernotedrag(posx,posy)
{
		y = 170
	
	MouseGetPos, x0, y0
	
	send,{blind}{ctrl up}
	
	loop 18
	{

	pixelgetcolor color,350,%y%


	stringmid data,color,3,1
	stringmid data2,color,4,1
	if data = E
	{
	sleep,50
	mouseclickdrag, left,500,%y%,posx,posy,3
	sleep,100
	mouseclick ,left,,,,,U
	mousemove,404,%y%
	break
	}
	else if data2 = E
	{
	sleep,50
	mouseclickdrag, left,500,%y%,posx,posy,3
	sleep,100
	mouseclick ,left,,,,,U
	break
	}

	y += 18
	
	}
	
	MouseMove, x0, y0

	return
}

evertitleclick()
{
		y =170
	
	MouseGetPos, x0, y0
	
	send,{blind}{ctrl up}
	
	loop 18
	{

	pixelgetcolor color,350,%y%


	stringmid data,color,3,1
	stringmid data2,color,4,1

	if data = E
	{
	sleep,50
	mouseclick,right,500,%y%
	mousemove,404,%y%
	break
	}
	else if data2 = C
	{
	sleep,50
	mouseclick,right,500,%y%
	sleep,100
	mouseclick ,left,,,,,U
	break
	}

	y += 18
	
	}
	
	MouseMove, x0, y0

	return
}

stickiesiromihon(x,y,z)
{
	send,{vk1Dsc07B}
	send,{appskey}
	send,{up 11}
	send,{enter}
	send,{tab 2}
	send,%x%
	send,{tab}
	send,%y%
	send,{tab}
	send,%z%
;	
	sleep,200
;
	send,{enter}
	return
}

/*
^b::
{
	clickimage("C:\Users\stroketip\Desktop\ScreenClip [1].png")
	return
}
*/
/*
ClickImage(img)
{
	    MouseMove,g_X,g_Y,1
	    
        ImageSearch,foundX,foundY,0,0,%A_ScreenWidth%,%A_ScreenHeight%,%img%
        if(ErrorLevel == 0){
            if debug
                MsgBox,,,X:%foundX% Y:%foundY%,1
            Random,r_X,1,5
            Random,r_Y,1,5
            foundX := foundX+r_X
            foundY := foundY+r_Y
            Click,%foundX%,%foundY%
            
            return
            }
}
*/
Stickieswhitefont()
{
	send,{shift up}
	send,{win up}
	send,^a
	mouseclick,r,15,40,1
	send,{up 6}
	send,{right}
	send,{up 2}
	send,{enter}
	send,{right}
	return
}

stickiesblackfont()
{
	send,{shift up}
	send,{win up}
	sleep,100
	send,^a
	mouseclick,r,15,40,1
	send,{up 6}
	send,{right}
	send,{up 6}
	send,{enter}
	send,{right}
	return
}

torimoji(a,mae,ato)
{
/*
a=文字列,最初の文字、最後の文字、

mae=最初の文字
ato=最後の文字

文章があって、最初の文字と最後の文字で囲まれた間の文章を取り出して返す。


使い方
msgt := torimoji(b,dae,afo)
msgbox,%msgt%

*/

stringgetpos,maehdx,a,%mae%,L1
stringgetpos,atohdx,a,%ato%,R1

stringlen,len,a
stringlen,mlen,mae
atolen := len - atohdx


tsumolen := len - maehdx - atolen - mlen

maehdx += mlen + 1

stringmid,output,a, %maehdx% ,%tsumolen%

return,%output%

}

tukikeisan(x)
{
	clipboard_backup = %ClipboardAll%
	clipboard=

;raigetuとなっているが、答えの月answermonthに置き換えた方が良いのでは
	raigetu:= a_mm
	raigetu += x
	;// +のほう
	if(raigetu>0)
	{
		rainen := a_year 
		if(raigetu>12)
		{
		addyear := Floor(raigetu/12)
		raigetu := mod(raigetu, 12)
		rainen += addyear
		}
		
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2
		
		clipboard=%rainen%-%raigetu%
		
		clipwait,1
		sleep,100
		send,^v

		Clipboard := clipboard_backup
		return
	}

		if(raigetu<1)
	{
		;-x月
		
		addyear := -1 * Ceil(raigetu/-12)
		
		raigetu := mod(raigetu, 12)

		rainen:= a_year + addyear
		if(raigetu = 0)
		{
			rainen--
		}
		
		raigetu := 12 + raigetu
		
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2

		clipboard=%rainen%-%raigetu%
		
		clipwait,1
		sleep,100
		send,^v

		Clipboard := clipboard_backup
		return
	}
	return

}

callink(x)
{


	clipboard_backup = %ClipboardAll%
	clipboard=


	raigetu:= a_mm
	raigetu += x

	;// +のほう
	if(raigetu>0)
	{
		rainen := a_year 
		if(raigetu>12)
		{
		addyear := Floor(raigetu/12)
		raigetu := mod(raigetu, 12)
		rainen += addyear
		}
		
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2
		
		a_mm1=%rainen%%raigetu%
/*


		addyear := Floor(raigetu/12)

		raigetu := mod(raigetu, 12)

		rainen:= a_year + addyear
				
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2
		
		a_mm1=%rainen%%raigetu%
*/

Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		clipboard := textb
		clipwait,1
		
		sleep,100
		send,^v
	
		sleep,100
		Clipboard := clipboard_backup
		return
	}
	}
	
msgbox,カレンダーリンクのテキストの中に、先月のリンクがありませんでした。

	}

		if(raigetu<1)
	{
		;-x月
				
		addyear := -1 * ceil(raigetu/-12)
		
		
		raigetu := mod(raigetu, 12)
		
		

		rainen:= a_year + addyear
		if(raigetu = 0)
		{
			rainen--
		}
		
		raigetu := 12 + raigetu
		
		raigetu = 0%raigetu%
		stringright,raigetu,raigetu,2

		a_mm1=%rainen%%raigetu%
Loop,Read,C:\Users\stroketip\Desktop\ショートカット\ahk\evernotecal_link\callink.csv
{
	texta := A_LoopReadLine
	
	stringleft,texta,texta,6

	if(texta = a_mm1)
	{
		textb:= a_loopreadline
		stringtrimleft,textb,textb,7
		
		clipboard := textb
		clipwait,1
		
		sleep,100
		send,^v
	
		sleep,100
		Clipboard := clipboard_backup
		return
	}

}

msgbox,カレンダーリンクのテキストの中に、先月のリンクがありませんでした。



	}
	return
}

wordshoot(word)
{

	clipboard_backup = %ClipboardAll%
	clipboard=
	
	clipboard := word
	clipwait,1
	sleep,100
	
    Gosub, IMEGetstate
    If (vimestate=1)
    {
		send,{vk1Dsc07B}
		sleep,100
		send,^v
		sleep,100
		send,{vk1Csc079}
    }
    else
    {
    	send,^v
    	sleep,100

    }
     	Clipboard := clipboard_backup
    return
}


IMEGetstate:
{
    DetectHiddenWindows, ON
    WinGet, vcurrentwindow, ID, A
    vgetdefault := DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow)
    vimestate := DllCall("user32.dll\SendMessageA", "UInt", vgetdefault, "UInt", 0x0283, "Int", 0x0005, "Int", 0)
    DetectHiddenWindows, Off
    return
}


clickimage(a)
{
SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79
;msgbox,vw=%VirtualWidth% & vh= %VirtualHeight%
image_name:=a
if 1	; screen coordinates
coord=screen
else
coord=relative

scorex=
CoordMode, ToolTip, %coord%
CoordMode, Pixel, %coord%
CoordMode, Mouse, %coord%
CoordMode, Caret, %coord%
CoordMode, Menu, %coord%
SetTimer, WatchCursor, 100

ImageSearch, FoundX, FoundY, 0, -340, VirtualWidth, VirtualHeight, %image_name%

if ErrorLevel = 2
{
tooltip Could not conduct the search.
settimer notip, -500
scorex=2
tooltip
}
else if ErrorLevel = 1
{
tooltip Image could not be found on the screen.
settimer notip, -500
scorex=2
return 
}
else
{
foundx += 5
foundy += 5
mousemove, %FoundX%, %FoundY%, 2
scorex=1
}
return

}

WatchCursor:
MouseGetPos,xpos , ypos , id, control
return

notip:
	tooltip
return

