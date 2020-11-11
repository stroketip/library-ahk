
Reload
WinWait,ahk_class #32770,Error at line ,2
If ErrorLevel=0
{
  ControlGetText,v,Static1
  StringGetPos,p,v,.
  p-=14
  StringMid,line,v,15,%p%
  run,C:\Program Files (x86)\Hidemaru\Hidemaru.exe "%A_ScriptFullPath%" /j%line%
  WinWaitNotActive
  WinActivate
}
return



return
