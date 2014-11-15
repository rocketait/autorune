
setql(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\ql.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my ql?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
}
return 1
}


settool(ByRef tool_x, ByRef tool_y)
{
;sets tool_x/y
CoordMode Pixel 
coordmode Mouse
SplashTextOn,,, Where is my Tool?
sleep 5000
SplashTextOff
MouseGetPos, tool_x, tool_y
return
}

setobject(stringthing,ByRef tool_x,ByRef tool_y)
{
CoordMode Pixel 
coordmode Mouse
SplashTextOn,,, %stringthing%
sleep 5000
SplashTextOff
MouseGetPos, tool_x, tool_y
return
}

EatSetup(ByRef food_x,ByRef food_y)
{
;sets eat_x/y food_x/y
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
SplashTextOn,,, Where is my food?
sleep 3000
SplashTextOff
MouseGetPos, food_x, food_y
sleep 1000
findeat(eat_x,eat_y)
return
}

waterSetup(ByRef water_x,ByRef water_y)
{
; Setup sets water_x/y

global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse

; if water is 0 water was found and no user input is need
ImageSearch, water_x, water_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\water4.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my water?
	sleep 5000
	SplashTextOff
	MouseGetPos, water_x, water_y
}

MouseClick, right, water_x, water_y
sleep 2000
finddrink(drink_x,drink_y)
}

setbelt(name, ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\%name%
if ErrorLevel = 2
    msgbox Could not conduct the search for %name%.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my %name% ?
	Sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}	
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}


setbeltpick(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltpickaxe.png
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my pickaxe ?
	Sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}	
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}


setbeltPelt(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltleather.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my pelt left?
	Sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}



setbeltawl(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltawl.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my awl?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 0
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}



setbeltbutcher(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltbutcher.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my butcher knife?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}


setbeltknife(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltknife.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my knife?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0
}


setbeltfile(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltfile.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my file?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}



setbelthatchet(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\belthatchet.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my hatchit?
	sleep 5000
	SplashTextOff	
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}



setbeltlknife(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltlknife.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my leather knife?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}



setbeltmallet(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltmallet.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my mallet?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}



setbeltneedle(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltneedle.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my needle?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbeltsaw(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltsaw.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my saw?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbeltlog(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *30 images\beltlog.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my log?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbeltscissor(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltscissor.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my butcher knife?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}



setbeltshovel(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltshovel.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my shovel?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbeltsickle(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltsickle.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my sickle?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbeltspindle(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltspindle.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my spindle?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}


setbelttrowel(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\belttrowel.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	SplashTextOn,,, Where is my trowel?
	sleep 5000
	SplashTextOff
	MouseGetPos, loc_x, loc_y
	return 1
}
loc_x := loc_x +10
loc_y := loc_y +10
return 0

}