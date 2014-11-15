; menu test for programes
;tray menu

#Persistent  ; Keep the script running until the user exits it.
menu, tray, NoStandard
Menu, tray, add, exit, lbexit  ; Creates a new menu item. 
; submenu stuff

Menu, MyMenu, add, Quick Mode, quickmode
Menu, MyMenu, Add
Gosub, akody
Menu, MyMenu, Add
Gosub, aben
quick = 0

^RButton::Menu, MyMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.


apause:
ispased := 0
menu, tray, delete, Pause
menu, tray, add, unpause, upause
Menu, MyMenu, delete, Pause
menu, MyMenu, add, unpause, upause
Menu, Tray, Icon, menu1.exe, 4
SetTimer, bpause
return


bpause:
Thread, NoTimers
while(ispased =0)
{
}
return

upause:
ispased := 1
menu, tray, add, Pause, apause
menu, tray, delete, unpause
Menu, MyMenu, add, Pause, apause
menu, MyMenu, delete, unpause
Menu, Tray, Icon, menu1.exe, 1
Thread, NoTimers,false
return


Pause::
if(isPased >0)
{
Gosub, apause
}
else
{
Gosub, upause
}
return

doingaction:
Menu, MyMenu, DeleteAll
Menu, MyMenu, Add, Stop, astop
Menu, MyMenu, Add, Pause, aPause
Menu, tray, add, Pause, aPause
return

MenuHandler:
return

lbexit:
exitapp

astop:
Reload
return

quickmode:
menu, MyMenu,Delete, Quick Mode
menu, Mymenu, add, Normal Mode, normalmode
quick = 1
return 

normalmode:
menu, MyMenu,Delete, Normal Mode
menu, Mymenu, add, Quick Mode
quick = 0
return

#Include lib\lib_basic.ahk
#Include Ben\menu.ahk
#Include Kody\menu.ahk


