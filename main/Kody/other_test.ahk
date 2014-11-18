;this is where the script realy goes i will put in a bunch of random commands that you might you



;remember to put this in (this is in the settmer command back in your menu file) this is where the program will start
kodyothertest2:


;makes a varuable and sets it to 0
tempcount := 0  

SplashTextOn,,, kody loves men
sleep 1000
SplashTextOff

;incress the varuable by 1
tempcount++

;this incresses it by 1000
tempcount := %tempcount% + 4000 

SplashTextOn,,, using the tempcount delay
sleep %tempcount%
SplashTextOff


;reload to end your program (it resets every thing to when you start the program and it just works better then exiting :)
reload



