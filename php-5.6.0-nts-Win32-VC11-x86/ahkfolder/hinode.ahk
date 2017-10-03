run,C:\Users\stroketip\Desktop\ショートカット\ahk\php-5.6.0-nts-Win32-VC11-x86\ahkfolder\hinode.bat,,hide

sleep,100

FileRead, outvar,C:\Users\stroketip\Desktop\ショートカット\ahk\php-5.6.0-nts-Win32-VC11-x86\ahkfolder\hinode.txt

stringright,hinode,outvar,5

send,%hinode%

exitapp