#ifwinactive 秀丸
:*:,,textshot::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\textshot.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	send,{up 14}
	send,{right 4}
	send,+{right 8}
	return
}


:*:,,exampleshot::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\exampleshot.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,getsize::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\getsize.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,crop::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\irfancrop.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,kannsuu::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\kannsuu.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,thishotkey::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\thishotkey.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,orchis::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\orchis.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,tasklog::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\tasklog.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,numtoday::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\numtoday.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,includeanigif::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\includeanigif.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,anigif::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\anigif.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	send,{bs}
	send,{left 20}
	send,+{left 12}
	return
}:*:,,amari::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\amari.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,rokuon::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\rokuon.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,foldershori::
:*:,,foldersyori::
:*:,,fileshori::
:*:,,filesyori::
:*:,,filesousa::
:*:,,fairusousa::
:*:,,foldersousa::
:*:forudasousa::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\foldershori.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,phpexe::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\phpexe.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,getpath::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\getpath.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,attaraf::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\attaraf.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,nakattaraf::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\nakattaraf.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,korekoref::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\korekoref.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,santen::
:*:,,sannten::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\santen.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,mouse::{
	#hotstring SI
	
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\mouse.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,cmhide::
:*:,,cmdhide::
:*:,,doshide::
:*:,,dshide::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\doshide.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,runwait::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\runwait.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}

:*:,,runwait::
:*:,,ranwait::
:*:,,fran::
:*:,,frun::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\runwait.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,imgclick::
:*:,,clickimage::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\imgclick.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,imgscan::
{

	clipboard_backup = %ClipboardAll%
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\imgscan.txt

	clipboard := temp
	
	clipwait,10
	
	send,^v
	return
}
:*:,,yukkuritalkheadder::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\yukkuritalkheadder.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,nicotalkheader::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\nicotalkheader.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,header.::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\header..txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,jimakuset::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\jimakuset.txt

	clipboard := temp
	sleep,100
	clipwait,10
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,ifwin.::
:*:,,ifwait.::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\ifwin..txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,seisuu::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\seisuu.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,ahkkongetu::
:*:,,ahkkonngetu::
{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\,,ahkkongetu.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,ahkkyou::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\ahkkyou.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,ahkkotosi::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\ahkkotosi.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,csvmatch::
:*:,,csvkensaku::
:*:,,csvkennsaku::
:*:,,csvfind::
:*:,,csvserch::
:*:,,csvsearch::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\csvmatch.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,imeon.::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\imeon..txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,imeoff::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\imeoff.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,ifime.::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\ifime..txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,kirisute::
:*:,,int.::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\kirisute.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,sishagonyuu::
:*:,,sisyagonyuu::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\sishagonyuu.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}:*:,,kiriage::{
	clipboard_backup = %ClipboardAll%
	clipboard=
	
	FileRead, temp, C:\Users\stroketip\Desktop\ショートカット\ahk\library\textshot\kiriage.txt

	clipboard := temp
	sleep,100
	clipwait,1
	
	send,^v
	
	Clipboard := clipboard_backup
	
	
	return
}