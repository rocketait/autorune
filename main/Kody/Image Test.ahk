WinWait, RuneScape, 
IfWinNotActive, RuneScape, , WinActivate, RuneScape, 
WinWaitActive, RuneScape, 

findpic(name, ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, images\tan\close.png
if ErrorLevel = 2
    msgbox Could not conduct the search for %name%.
else if ErrorLevel = 1
{
return 0
}
return 1
}
