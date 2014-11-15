;this is where the script realy goes i will put in a bunch of random commands that you might you



;remember to put this in (this is in the settmer command back in your menu file) this is where the program will start

kodytest2:
SplashTextOn,,, start
InputBox, loopnum , loop Number, how many times should i do this crap?,,,,,,,,1
SplashTextOff
mytest = 1
SplashTextOn,,, %mytest%
sleep 1000
SplashTextOff
loop ,%loopnum%
{
mytest := mytest + 1
SplashTextOn,,, %mytest%
sleep 500
SplashTextOff
}

SplashTextOn,,, %loopnum%
sleep 10000
sleep 1000
;this sets up the window size so that you dont search the whole screen (it can be slow or anoying if you have something out side of your screen)
windowsetup(win_x,win_y,win_x2,win_y2)


;this will run setbeltkody in your set up and store the values in bkody_x/y
setbeltkody(bkody_x,bkody_y)

;this will run the findkody for your setup file and then move the mouse there
findkody(imp_x,imp_y)
MouseMove, imp_x, imp_y+3

;this clicks the right/left butten
MouseClick, right, bkody_x,bkody_y
MouseClick, left, water_x,water_y

;this is the sleep command
sleep 2000

;this sends a key
send v

;this sends and holds a key
send {v up}
sleep 1000
send {v down}

;this looks for the action bar and returns when theres no action (2000 is the time to wait before looking again,  no need to put wait in before the action comand becouse it sleeps for a bit any way) 
action(2000)


;this will loop until it can not find a kody object (changing it to =1 would make it loop until if found a kody)
while (findkody(imp_x,imp_y)=0)
{
msgbox it found a kody (stuff would happen in these brackets
}


;this sets a message box that times out in 4 secounds and then gets the mouse position
MsgBox, 0,, Where is my food?,4
MouseGetPos, food_x, food_y


;makes a varuable and sets it to 0
tempcount := 0  

;incress the varuable by 1
tempcount++

;reload to end your program (it resets every thing to when you start the program and it just works better then exiting :)
reload



