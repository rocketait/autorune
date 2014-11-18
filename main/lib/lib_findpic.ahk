findpic(name, ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite images\%name%
if ErrorLevel = 2
    msgbox Could not conduct the search for %name%.
else if ErrorLevel = 1
{
return 0
}
return 1
}

findimage(name, ByRef loc_x,ByRef loc_y)
{
WinGetPos, , ,  win2X, win2Y, A
ImageSearch, loc_x, loc_y,  0, 0, win2X, win2Y, *TransWhite *10 images\%name%
if ErrorLevel = 2
{
    msgbox somthing is wronge with path/name of %name%.
return 2
}
else if ErrorLevel = 1
{
return 1
}
return 0
}




findharrow(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite images\huntingarrowimg.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findplank(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\plank.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}



findpelt(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\leather.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findlog(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\log.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}



findknife(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\knife.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findmallet(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\mallet.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}


findfile(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *TransWhite *10 images\file.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}




findarrowshaft(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transwhite images\arrowshaft.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
msgbox cant find shaft
return 0
}
return 1
}



findwoodscrap(ByRef loc_x,ByRef loc_y)
{
global win_x
global win_y
global win_x2
global win_y2
CoordMode Pixel 
coordmode Mouse
sleep 1000
ImageSearch, loc_x, loc_y,  win_x, win_y, win_x2, win_y2, *Transwhite images\woodscrap.gif
if ErrorLevel = 2
    msgbox Could not conduct the search.
else if ErrorLevel = 1
{
return 0
}
return 1
}