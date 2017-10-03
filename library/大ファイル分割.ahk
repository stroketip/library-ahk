^b::

{
	Fileread, x, C:\Users\stroketip\Desktop\406.txt
	y=0
	
	
	loop
	{
		
	stringleft,x1,x,32672
;	msgbox,%x1%
	stringgetpos,leglengs,x1,`r,r
	
	y := 32672 - leglengs
	
	msgbox,%leglengs%	
	
	stringtrimright,x1,x1,y

	fileAppend , %x1%, C:\Users\stroketip\Desktop\text%a_index%.txt

	stringtrimleft,x,x,leglengs
;	msgbox,%y%
	stringlen,lenx,x
;	msgbox,lenx %lenx%
	
	if(lenx<32672)
	{
		endex := a_index + 1
		fileappend , %x%,C:\Users\stroketip\Desktop\text%endex%.txt
		break
	}
	}
;	stringgetpos,leglengs,outputar,`r,r

;	msgbox,%lengs%,footstep=%leglengs%
	
	return




}