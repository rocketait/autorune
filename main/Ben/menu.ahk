aben:
;how a menu should look
;first Menu,
;then the name of the menu MyMenu is the root level what you see what you contral right click
;then Add,
;then the words the use will see (name of the menu)
;then if its a submenu you go :menuname else just the label it should go to

; submenu stuff
Menu, bensub, Add, item1, bentest
Menu, bensub, Add, item2, bentest
; submenu
Menu, MyMenu, Add, bensub, :bensub 
; not a submenu item
Menu, MyMenu, add, bentestitem, bentest

; example of working code
Menu, trees, Add, sorcerers tower, magic_tree
Menu, MyMenu, add,  Chop trees, :trees 

;exit outs of menu
return





;this is where the menus brings you and you run your bots (note a lable is something:)
;all lables need to be diffrent so the "settimer, bentest2" sends it to label bentest2 (the bot)

bentest:
SetTimer, bentest2
Gosub, doingaction
return

magic_tree:
SetTimer, magic_tree2
Gosub, doingaction
return


;this copys and pasts your code from your bot file in here
#include ben\test.ahk
#include ben\functions.ahk
#include ben\magic_tree.ahk

