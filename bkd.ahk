^b::
setuzoku()
{
run,netsh interface set interface "イーサネット" enabled
return
}

^r::
setudan()
{
	run,netsh interface set interface "イーサネット" disabled
	return
}
