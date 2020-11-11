run,C:\Program Files (x86)\NCSOFT\NCLauncher\NCLauncher.exe /LauncherID:"ncLauncher" /CompanyID:"0" /LUpdateAddr:"Uniupdate.NCSoft.jp" /GameID:"JanRyuMon" /SessKey:""

WinWait, 真・雀龍門, 
IfWinNotActive, 真・雀龍門, , WinActivate, 真・雀龍門, 
WinWaitActive, 真・雀龍門, 
MouseClick, left,  388,  311
Sleep, 100
Send, nanamomo1{ENTER}

return
