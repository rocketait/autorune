runecraft_air2:

InputBox, loopnum , loop Number, how many times should i do this crap?,,,,,,,,1
loop,%loopnum%
{
WinWait, RuneScape, 
IfWinNotActive, RuneScape, , WinActivate, RuneScape, 
WinWaitActive, RuneScape, 
MouseClick, right,  660,  343
Sleep, 1000
MouseClick, left,  647,  450
Sleep, 1000
MouseClick, left,  1093,  262
Sleep, 1000
MouseClick, left,  22,  795
Sleep, 10000
MouseClick, left,  588,  990
Sleep, 8000
MouseClick, left,  14,  795
Sleep, 8000
MouseClick, left,  20,  796
Sleep, 8000
MouseClick, left,  598,  988
Sleep, 8000
MouseClick, left,  454,  542
Sleep, 10000
MouseClick, left,  1121,  379
Sleep, 10000
MouseClick, left,  825,  760
Sleep, 10000
MouseClick, left,  1843,  355
Sleep, 11000
MouseClick, left,  1591,  237
Sleep, 11000
MouseClick, left,  1489,  354
Sleep, 10000
MouseClick, left,  977,  815
Sleep, 1000
}

reload