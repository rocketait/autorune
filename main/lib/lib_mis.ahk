CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
coordmode Mouse


;var
sleep 5000
win_x =0
win_y =0
win_x2 := A_ScreenWidth
win_x3 := A_ScreenHeight



findfavorbar(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *30 images\favor.png
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findfavor(num)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
if(num=1 or num=10)
{
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransBlack images\favor10.gif
if ErrorLevel = 2
    msgbox Could not conduct the search for favor10.gif.
else if ErrorLevel = 1
{
return 0
}
return 1
}
}



findaction(ByRef loc_x, ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack *20 images\loading.png
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transblack *20 images\loading2.png
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
}
return 1
}



action(time)
{
CoordMode Pixel 
coordmode Mouse
global win_x
global win_y
global win_x2
global win_y2
temp_x = %win_x%
temp_y = %win_y%
temp_x2 = %win_x2%
temp_y2 = %win_y2%
	
WinGetActiveStats, name, win_w, win_h, win_x, win_y
	win_x2 := (win_x + win_w)
	win_y2 := (win_y + win_h)
sleep 3000
while (findaction(xa,ya)>0)
{
sleep time
}
win_x = %temp_x%
win_y = %temp_y%
win_x2 = %temp_x2%
win_y2 = %temp_y2%
return 0
}



