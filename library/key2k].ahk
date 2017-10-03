send,#d

Errorlevel =
process, exist,Clibor.exe

if(Errorlevel <> 0)
{
process, close ,%ErrorLevel%

send,#d
return
}

run,C:\Users\stroketip\Desktop\ショートカット\clibor\Clibor.exe
sleep,100
send,#d

;msgbox,%ErrorLevel%



;ahk_class TFrm_Clibor

return
