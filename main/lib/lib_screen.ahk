windowsetup(ByRef win_x,ByRef win_y,ByRef win_x2,ByRef win_y2)
{
CoordMode Pixel 
coordmode Mouse
	WinGetActiveStats, name, win_w, win_h, win_x, win_y
	win_x2 := (win_x + win_w)
	win_y2 := (win_y + win_h)
}

wait_for_window(window_name)
{
WinWait,window_name
IfWinNotActive, window_name
WinWaitActive, window_name 
return 0
}

storagebin(ByRef win_x,ByRef win_y,ByRef win_x2,ByRef win_y2)
{
CoordMode Pixel 
coordmode Mouse

ImageSearch, win_x, win_y,  win_x, win_y, win_x2, win_y2, *TransBlack *3 images\sbin.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find top left of storagebin

}



ImageSearch, win_x2, trash,  win_x, win_y-40, win_x2, win_y2, *20 images\itopright.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find top right of storigbin

}



ImageSearch, win_x2, win_y2,  win_x, win_y, win_x2+40, win_y2, *10 images\ibottem.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find bottem right of storagebin

}

}





inventory(ByRef win_x,ByRef win_y,ByRef win_x2,ByRef win_y2)
{
CoordMode Pixel 
coordmode Mouse

ImageSearch, win_x, win_y,  win_x, win_y, win_x2, win_y2, *TransBlack *10 images\invitory.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find top left of inventory

}


ImageSearch, win_x2, trash,  win_x, win_y-40, win_x2, win_y2, *10 images\itopright.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find top right of inventory

}


ImageSearch, win_x2, win_y2,  win_x, win_y, win_x2+40, win_y2, *10 images\ibottem.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
	msgbox oh no could not find bottem right of inventory

}
}
