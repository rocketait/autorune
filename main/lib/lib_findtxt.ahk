findtxt(txt,left_x,top_y,ByRef loc_x,ByRef loc_y)
{
CoordMode Pixel 
coordmode Mouse
global win_x2
global win_y2
right_x = %win_x2%
bottem_y = %win_y2%


MouseGetPos, varx, vary,
len := StrLen(txt)
len++
fail = 1
if(left_x >30)
	left_x := left_x -30
tleft_x = %left_x%
tright_x = %right_x%
ttop_y = %top_y%
tbottem_y = %bottem_y%
stuff = 1
first=0
secound = 0
;msgbox left_x  %left_x%
while(fail=1)
{	
	if(first=1)
{
	if(stuff>0)
	{
	ttop_y := firsttop
	tbottem_y := ttop_y+ 20	
	tright_x := right_x
	secound = 1

	}
	else
	{
	if (secound = 0)
		{
			;msgbox coud not find %txt% %char% in left %tleft_x%  top %ttop_y%   right %tright_x%  bottem %tbottem_y%  
			return 0
		}
	secound = 0
	tbottem_y = %bottem_y%
	tleft_x = %left_x%
	tright_x = %right_x%
	ttop_y := firsttop +1
	;msgbox left %tleft_x%  top %ttop_y%   right %tright_x%  bottem %tbottem_y% 
;sleep 400 
	}
}
cont = 1
stuff = 0
first = 1
	while(cont<len)
	{
		StringMid,char,txt,cont,1
		;msgbox %char%
		;sleep 500

		if(char = "^")
		{
			cont++
			StringMid,char,txt,cont,1
			ImageSearch, loc_x, loc_y,  tleft_x, ttop_y, tright_x, tbottem_y, *Transblack images\txt\symbol\%char%.gif
		}
		else if char is upper
		{	
			ImageSearch, loc_x, loc_y,  tleft_x, ttop_y, tright_x, tbottem_y, *Transblack *10 images\txt\upper\%char%.gif
		}
		else
		{
			ImageSearch, loc_x, loc_y,  tleft_x, ttop_y, tright_x, tbottem_y, *Transblack images\txt\%char%.gif
		}

		if ErrorLevel = 2
		{
 	  	 	msgbox Could not conduct the search for letter %char% .
  			return 0
		}
		if ErrorLevel = 1
		{
			;msgbox failed
			break
		}

		if(cont=1)
			firsttop := loc_y

		if(cont>1)
			if(loc_x-tleft_x>10)
{
				break		
}
		stuff++
		tleft_x := loc_x+1
		ttop_y := loc_y -10
		cont++
		tright_x := loc_x+30
	}
	if(cont = len)
	{
		;msgbox found it
		fail = 0
	}
}
return 1
}




findplanktxt(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack images\planktxt.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findweapons(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack *10 images\weaponstxt.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findtxtlog(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack *10 images\txtlog.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


finduhuntingarrow(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\uhuntingarrow.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}



finduwararrow(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\uhuntingarrow.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findHarrowhead(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\harrowhead.GIF
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findwarrowhead(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\warrowhead.GIF
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findcreate(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\Create.GIF
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findmisc(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\miscellaneous.GIF
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}



findcast(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\cast.gif
if ErrorLevel = 2
    msgbox Could not conduct the searchcast.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findop(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\op.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findbash(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\destroy.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findrepair(ByRef repair_x,ByRef repair_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
ImageSearch, repair_x, repair_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\repair.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	MouseGetPos, repair_x, repair_y
}
mouseclick, left, repair_x, repair_y
}


findeat(ByRef eat_x,ByRef eat_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
ImageSearch, eat_x, eat_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\eat.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	return 1
}
	
mouseclick, left, eat_x, eat_y
return 0
}


finddrink(ByRef drink_x,ByRef drink_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
ImageSearch, drink_x, drink_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\drink.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	return
}
    
mouseclick, left, drink_x, drink_y

}


