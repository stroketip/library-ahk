run,C:\Program Files (x86)\NCSOFT\NCLauncher\NCLauncher.exe /LauncherID:"ncLauncher" /CompanyID:"0" /LUpdateAddr:"Uniupdate.NCSoft.jp" /GameID:"JanRyuMon" /SessKey:""

WinWait, �^�E������, 
IfWinNotActive, �^�E������, , WinActivate, �^�E������, 
WinWaitActive, �^�E������, 
MouseClick, left,  388,  311
Sleep, 100
Send, nanamomo1{ENTER}

return
