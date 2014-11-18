image_test2:
WinWait, RuneScape, 
IfWinNotActive, RuneScape, , WinActivate, RuneScape, 
WinWaitActive, RuneScape, 

; looking for image
picpath = tan\close.png
if(findimage(picpath,x,y) != 0) ;  if you look for image and you got an error
{
msgbox lame i cant find %rawpic% on screen ; suff between { } will be done if error
}
MouseMove, x+10, y+10, 50 ; realy slow move (replace with your clicks and stuff x,y is top left of where image was found)
sleep 1000

reload
