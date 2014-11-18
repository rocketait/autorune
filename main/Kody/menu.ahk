akody:
;how a menu should look
;first Menu,
;then the name of the menu MyMenu is the root level what you see what you contral right click
;then Add,
;then the words the use will see (name of the menu)
;then if its a submenu you go :menuname else just the label it should go to

; submenu stuff
Menu, kodysub, Add, Test, kodytest
Menu, kodysub, Add, Other Test, kodyothertest
; submenu
Menu, MyMenu, Add, Kodysub, :kodysub 
; not a submenu item
Menu, MyMenu, add, image_test, image_test


; example of working code
Menu, minning, Add, mine yanille, mining_yanille
Menu, MyMenu, add, Minning, :minning

Menu, magic, Add, emerald ring, emerald_ring
Menu, magic, Add, High Alchemy, high_alchemy
Menu, magic, Add, Runecraft Air, runecraft_air
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

image_test:
SetTimer, image_test2
Gosub, doingaction
return

high_alchemy:
SetTimer, high_alchemy2
Gosub, doingaction
return

runecraft_air:
SetTimer, runecraft_air2
Gosub, doingaction
return

kodyothertest:
SetTimer, kodyothertest2
Gosub, doingaction
return


;this copys and pasts your code from your bot file in here
#include kody\test.ahk
#include kody\functions.ahk
#include kody\emerald_ring.ahk
#include kody\mining_yanille.ahk
#include kody\Image_Test.ahk
#include kody\Runecraft_Air.ahk
#include kody\High_Alchemy.ahk
#include kody\other_test.ahk