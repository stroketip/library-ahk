settitlematchmode,2

run,C:\Program Files\Microsoft Office\Office15\EXCEL.EXE "C:\Users\stroketip\Dropbox\xls\dデータ\今日の.xlsx"

winwait,- Excel

sleep,1000

send,^g
sleep,200

send,o2
sleep,200

send,{enter}
sleep,200

sleep,800

send,{f2}
sleep,200
send,{tab}
sleep,200
send,+{tab}
sleep,300

send,^c
sleep,100
/*
send,!{f4}
sleep,400

send,n

sleep,500

winactivate,Program Manager
winactivate,ahk_class WorkerW
send,#^+!s
*/
return