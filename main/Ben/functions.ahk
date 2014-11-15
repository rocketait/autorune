;this is where you put stuff that will be used in multible scripts and you dont want to set it up for each one.



setbeltben(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1001
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\beltben.gif
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
{
	MsgBox, 0,, Where is my ben?,6
	MouseGetPos, loc_x, loc_y
}
mouseclick, left, loc_x, loc_y
}

findben(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack *10 images\ben.gif
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
{
;coudnt find it
return 0
}
;found it
return 1
}
