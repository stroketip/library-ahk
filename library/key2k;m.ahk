Errorlevel =

process, exist,uTorrent.exe

if(Errorlevel <> 0)
{
process, close ,%ErrorLevel%
return
}

run,C:\Users\stroketip\Desktop\�V���[�g�J�b�g\ahk\run bat\utorrent.bat ,,hide
return