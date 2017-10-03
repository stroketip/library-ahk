{
	sleep,200
	WinGet, active_id, ProcessName, A
	
	process,close,%active_id%
	return
}
