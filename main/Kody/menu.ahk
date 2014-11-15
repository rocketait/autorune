akody:
;how a menu should look
;first Menu,
;then the name of the menu MyMenu is the root level what you see what you contral right click
;then Add,
;then the words the use will see (name of the menu)
;then if its a submenu you go :menuname else just the label it should go to

; submenu stuff
Menu, kodysub, Add, item1, kodytest
Menu, kodysub, Add, item2, kodytest
; submenu
Menu, MyMenu, Add, Kodysub, :kodysub 
; not a submenu item
Menu, MyMenu, add, kodytestitem, kodytest


; example of working code
Menu, minning, Add, mine yanille, mining_yanille
Menu, MyMenu, add, Minning, :minning

Menu, magic, Add, emerald ring, emerald_ring
Menu, MyMenu, add, Magic, :magic



;exit outs of menu
return


;this is where the menus brings you and you run your bots (note a lable is something:)
;all lables need to be diffrent so the "settimer, kodytest2" sends it to label kodytest2 (the bot)

kodytest:
SetTimer, kodytest2
Gosub, doingaction
return

mining_yanille:
SetTimer, mining_yanille2
Gosub, doingaction
return

emerald_ring:
SetTimer, emerald_ring2
Gosub, doingaction
return

;this copys and pasts your code from your bot file in here
#include kody\test.ahk
#include kody\functions.ahk
#include kody\emerald_ring.ahk
#include kody\mining_yanille.ahk