Errorlevel =

process, exist,EyeFiHelper.exe

if(Errorlevel <> 0)
{
run,C:\Users\stroketip\Pictures\Eye-Fi\
return
}

run,C:\Program Files (x86)\Eye-Fi\Helper\EyeFiHelper.exe
run,C:\Users\stroketip\Pictures\Eye-Fi\


return

