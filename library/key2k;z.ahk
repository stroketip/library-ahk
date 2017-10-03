
send,^c

run,C:\Program Files (x86)\JustSystems\TARO24\Taro24.exe,,,PidI


winwait,一太郎

sleep,100
send,^v

run,C:\Program Files\CHoRoKu\CHoRoKuS.exe

WinWait, ♪超録 - パソコン長時間録音機 v1.28A, 
IfWinNotActive, ♪超録 - パソコン長時間録音機 v1.28A, , WinActivate, ♪超録 - パソコン長時間録音機 v1.28A, 
WinWaitActive, ♪超録 - パソコン長時間録音機 v1.28A, 

sleep,1000

MouseClick, left,  53,  73
Sleep, 100


Winactivate,ahk_pid %PidI%

sleep,200


send,!av

sleep,1300

winactivate,,再生

MouseGetPos, x0, y0

MouseMove, 66,81
MouseClick, left

MouseMove, x0, y0

sleep,100


Input, UserInput, L1
if ErrorLevel = Max
{
	if(UserInput = "s")
	{
		WinActivate, ♪超録 - パソコン長時間録音機 v1.28A
		
		sleep,100

		MouseClick, left,  177,  71
		Sleep, 100
		
		send,!{f4}
		sleep,400
		
		
		send,!{f4}
		sleep,100
		send,n
		return
	}
	
		if(UserInput = "d")
	{
		WinActivate, ♪超録 - パソコン長時間録音機 v1.28A
		
		sleep,100
		MouseClick, left,  177,  71
		Sleep, 100

		send,!{f4}
		sleep,400
		
		
		send,!{f4}
		sleep,100
		send,n
		
		sleep,100
		
		filemove C:\Users\stroketip\Desktop\%a_year%-%a_mon%*.mp3,C:\Users\stroketip\Dropbox\mp3\%a_year%-%a_mon%*.mp3
		
		return
	}
	
	
	return
}


return
