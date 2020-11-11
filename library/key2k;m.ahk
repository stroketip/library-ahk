Errorlevel =

process, exist,uTorrent.exe

if(Errorlevel <> 0)
{
process, close ,%ErrorLevel%
return
}

run,C:\Users\stroketip\AppData\Roaming\uTorrent\uTorrent.exe
return