buttonCoordX := "629" 
buttonCoordY := "738" 
itemCoordX := "621" 
itemCoordY := "464"
macroEnabled := true
xPos := 1242
yPos := 564
stashX := [0,1,2,3,4,5,6,7,8,9,10,11]
stashY := [0,1,2,3,4]

F2::
    macroEnabled := !macroEnabled
return

F1:: 
 For x, _ in stashX {
    totalXPos:= xPos+53*x
    For y, _ in stashY {
        totalYPos:= yPos+50*y
        MouseMove, totalXPos, totalYPos, 1
        Send, {Ctrl Down}{Click}{Ctrl up}
        Sleep, 50
        MouseClick, Left, buttonCoordX, buttonCoordY,,0
        Sleep, 50
        MouseMove, itemCoordX, itemCoordY,0
        Sleep, 50
        Send, {Ctrl Down}{Click}{Ctrl up}
    }
 }
return


Alt & F1::
	Soundbeep, 587, 75
	Soundbeep, 622, 75
	Soundbeep, 587, 75
	Send, {Ctrl up}
    Reload
return