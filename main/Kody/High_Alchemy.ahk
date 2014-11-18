high_alchemy2:

InputBox, loopnum , loop Number, how many times should i do this crap?,,,,,,,,1
loop,%loopnum%
{
WinWait, RuneScape, 
IfWinNotActive, RuneScape, , WinActivate, RuneScape, 
WinWaitActive, RuneScape, 

Send {9 down}
sleep,100
send {9 up}
MouseClick, left,  1645,  828
Sleep, 3000
Send {9 down}
sleep,100
send {9 up}
MouseClick, left,  1645,  829
Sleep, 3200
Send {9 down}
sleep,100
send {9 up}
MouseClick, left,  1645,  827
Sleep, 3100
}

reload